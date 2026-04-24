-- luacheck: globals pairs ipairs next tinsert tostring tonumber _G

local L = WoWPro_Locale

-------------------------------
--      WoWPro_AutoComplete      --
-------------------------------

WoWPro.AutoComplete = WoWPro:NewModule("AutoComplete")
WoWPro:Embed(WoWPro.AutoComplete)
WoWPro.AutoComplete.Version = WoWPro.Version

-- Autocomplete implementation methods are defined below.

function WoWPro.AutoComplete:AutoCompleteGetFP(...)
    local _event, _idx, msg = ...
    -- ERR_NEWTAXIPATH = "New flight path discovered!";
    WoWPro:dbp("AutoCompleteGetFP(%s,%s,%s): Start.", tostring(_event), tostring(_idx), msg)
    if msg == _G.ERR_NEWTAXIPATH then
         for i = 1,15 do
             local index = WoWPro.rows[i].index
             msg = ("AutoCompleteGetFP(%s): Step %s/%d [%s]?"):format(msg, tostring(WoWPro.action[index]), index, tostring(WoWPro.step[index]))
             WoWPro:dbp(msg)
             if WoWPro.rows[i]:IsVisible() and WoWPro.action[index] == "f" then
                if not WoWProCharDB.Guide[WoWProDB.char.currentguide].completion[index] then
                    WoWPro.CompleteStep(index, "AutoCompleteGetFP("..msg..")")
                    return
                end
             end
        end
        WoWPro:print("Flightpoint discovered, but guide does not have an 'f' step active.")
    end
end

function WoWPro.AutoComplete:AutoCompleteBuff(unit, ...)
    if unit ~= "player" then return end
    for i = 1,15 do
        local index = WoWPro.rows[i].index
        if WoWPro.buff and WoWPro.buff[index] and  WoWPro:CheckPlayerForBuffs(WoWPro.buff[index]) then
            -- Log only the useful ones!
            WoWPro:LogEvent("UNIT_AURA", unit, ...)
            WoWPro.CompleteStep(index, "AutoCompleteBuff")
        end
    end
end

function WoWPro.AutoComplete:AutoCompleteDeath(...)
    local index = WoWPro.rows[1].index
    local dead = _G.UnitIsDeadOrGhost("player")
    if (WoWPro.action[index] == "d" and dead) or (WoWPro.action[index] == "s" and not dead) then
        WoWPro.CompleteStep(index, "AutoCompleteDeath")
    end
end

function WoWPro.AutoComplete:AutoCompleteLoot()
    if not WoWPro.GuideLoaded then return end
    for i = 1, 1 + WoWPro:GetActiveStickyCount() do
        local index = WoWPro.rows[i].index
        local lootItems = WoWPro.lootitem[index]
        if lootItems then
            if WoWProDB.profile.track then
                local track = WoWPro.GetLootTrackingInfo(lootItems)
                WoWPro.rows[i].track:SetText(track:trim())
                WoWPro:dbp("AutoCompleteLoot: Update tracking text to %s", track)
            end
            local allComplete = true
            for itemID, qty in pairs(lootItems) do
                local itemCount = _G.WoWPro.C_Item_GetItemCount(itemID)
                if qty > 0 then
                    if itemCount < qty then allComplete = false; break end
                elseif qty < 0 then
                    if itemCount >= -qty then allComplete = false; break end
                end
            end
            if allComplete and not WoWProCharDB.Guide[WoWProDB.char.currentguide].completion[index] then
                WoWPro:dbp("AutoCompleteLoot: Time to complete step.")
                WoWPro.CompleteStep(index, "AutoCompleteLoot")
            else
                WoWPro:dbp("AutoCompleteLoot: Not enough yet!")
            end
        end
    end
    WoWPro:UpdateGuide("WoWPro.AutoCompleteLoot")
end

function WoWPro.AutoComplete:AutoCompleteQuestUpdate(questComplete)
    local GID = WoWProDB.char.currentguide
    if not GID or not WoWPro.Guides[GID] then return end
    if not WoWProCharDB.Guide then return end
    if not WoWProCharDB.Guide[GID] then return end
    if not WoWProCharDB.Guide[GID].completion then return end

    WoWPro:dbp("Running: AutoCompleteQuestUpdate(questComplete=%s)",tostring(questComplete))

    for i=1,#WoWPro.action do
        local action = WoWPro.action[i]
        local completion = WoWProCharDB.Guide[GID].completion[i]
        if WoWPro.QID[i] and WoWPro.QID[i] ~= "*" then
            local numQIDs = select("#", ("^&"):split(WoWPro.QID[i]))
            for j=1,numQIDs do
                local QID = select(numQIDs-j+1, ("^&"):split(WoWPro.QID[i]))
                if not tonumber(QID) then
                    WoWPro:Error("Bad QID [%s] in Guide %s, step [%s %s]", WoWPro.QID[i], GID, action, WoWPro.step[i])
                    return
                end
                QID = tonumber(QID)

                -- Quest Turn-Ins --
                if WoWPro.CompletingQuest and action == "T" and not completion and WoWPro.missingQuest == QID then
                    WoWPro.CompleteStep(i,"AutoCompleteQuestUpdate: quest turn-in.")
                    if not WoWPro.nocache[i] then
                        WoWProCharDB.completedQIDs[QID] = true
                    end
                    WoWPro.CompletingQuest = false
                    WoWPro.missingQuest = nil  -- We got it, dont let the recorder get it!
                end

                -- Abandoned Quests --
                if not WoWPro.CompletingQuest and ( action == "A" or action == "C" )
                and completion and WoWPro.missingQuest == QID then
                    WoWProCharDB.Guide[GID].completion[i] = nil
                    WoWPro:UpdateGuide("ACQU: Abandoned Quest")
                end

                -- Quest AutoComplete --
                if questComplete and (action == "A" or action == "C" or action == "T" or action == "N") and QID == questComplete then
                    if WoWPro.mygroupsteps[i] and action == "C" and not WoWPro.QID[i]:find("^",1,true) then
                        return
                    else
                        WoWPro.CompleteStep(i, "AutoCompleteQuestUpdate: AutoComplete")
                    end
                end
                -- Quest Accepts --
                if WoWPro.newQuest == QID and action == "A" and not completion then
                    WoWPro.CompleteStep(i, "AutoCompleteQuestUpdate: Accept")
                    WoWPro.newQuest = nil -- We got it, dont let the recorder get it!
                end

                -- Quest Completion via QuestLog--
                if WoWPro.QuestLog[QID] and action == "C" and not completion and WoWPro.QuestLog[QID].complete then
                    if WoWPro.mygroupsteps[i] and action == "C" and not WoWPro.QID[i]:find("^",1,true) then
                        return
                    else
                        WoWPro.CompleteStep(i, "AutoCompleteQuestUpdate: via QuestLog")
                        WoWPro.oldQuests[QID] = WoWPro.oldQuests[QID] or {}
                        WoWPro.oldQuests[QID].complete = true -- We got it, dont let the recorder get it!
                    end
                end

                -- Partial Completion --
                if WoWPro.QuestLog[QID] and WoWPro.QuestLog[QID].leaderBoard and WoWPro.questtext[i]
                and not WoWProCharDB.Guide[GID].completion[i] then
                    local numquesttext = select("#", (";"):split(WoWPro.questtext[i]))
                    local complete = true
                    for l=1,numquesttext do
                        local lquesttext = select(numquesttext-l+1, (";"):split(WoWPro.questtext[i]))
                        local lcomplete = false
                        if WoWPro.ValidObjective(lquesttext) then
                            lcomplete = WoWPro.QuestObjectiveStatus(QID, lquesttext)
                        end
                        if not lcomplete then complete = false end --if one of the listed objectives isn't complete, then the step is not complete.
                    end
                    if complete then
                        --if the step has been found to be complete, run the completion function
                        WoWPro.CompleteStep(i, "AutoCompleteQuestUpdate: complete")
                    end
                end
            end
        end
    end

    -- First Map Point --
    if WoWPro.FirstMapCall then
        WoWPro:MapPoint()
        WoWPro.FirstMapCall = false
    end
end

function WoWPro.AutoComplete:AutoCompleteSetHearth(...)
    local msg = ...
    if not ( _G.issecretvalue and _G.issecretvalue(msg) ) then
        local _, _, loc = msg:find(L["(.*) is now your home."])
        if loc then
            WoWProCharDB.Guide.hearth = loc
            for i = 1,15 do
                local index = WoWPro.rows[i].index
                if WoWPro.action[index] == "h" and WoWPro.step[index] == loc
                and not WoWProCharDB.Guide[WoWProDB.char.currentguide].completion[index] then
                    WoWPro.CompleteStep(index, "AutoCompleteSetHearth")
                end
            end
        end
    end
end

function WoWPro.AutoComplete:AutoCompleteZone()
    local currentindex = WoWPro.rows[1+WoWPro:GetActiveStickyCount()].index
    local action = WoWPro.action[currentindex] or "?"
    local step = WoWPro.step[currentindex] or "?"
    local targetzone = WoWPro.targetzone[currentindex] or "!"
    local zonetext, subzonetext = _G.GetZoneText(), _G.GetSubZoneText():trim()
    WoWPro:dbp("AutoCompleteZone: [%s] or [%s] .vs. %s [%s]/[%s]", zonetext, subzonetext, action, step, targetzone)
    if action == "F" or action == "H" or action == "b" or action == "P" or action == "R" then
        if not WoWProCharDB.Guide[WoWProDB.char.currentguide].completion[currentindex] then
            if (step == zonetext) or (step == subzonetext) then
                WoWPro.CompleteStep(currentindex,"AutoCompleteZone:"..step)
                return true
            end
            if (targetzone == zonetext) or (targetzone == subzonetext) then
                WoWPro.CompleteStep(currentindex,"AutoCompleteZone:"..targetzone)
                return true
            end
            local _, _, mapId = WoWPro:GetPlayerZonePosition()
            if (tonumber(targetzone) and tonumber(targetzone) == mapId) then
                WoWPro.CompleteStep(currentindex,"AutoCompleteZone:"..targetzone)
                return true
            end
        end
    end
    return false
end

function WoWPro.AutoComplete:AutoCompleteCriteria()
    if not WoWProDB.char.currentguide then return end

    local qidx = WoWPro.rows[WoWPro:GetActiveStickyCount()+1].index
    if WoWPro.QID[qidx] and WoWPro:IsQuestFlaggedCompleted(WoWPro.QID[qidx],true) then
        WoWPro.CompleteStep(qidx,"AutoCompleteCriteria-Quest")
    else
        WoWPro:UpdateGuide("WoWPro.AutoCompleteCriteria?")
    end
end

function WoWPro.AutoComplete:AutoCompleteChest()
    if not WoWProDB.char.currentguide then return end

    local zone = WoWPro.GetZoneText()
    if zone == "Timeless Isle" then
        local qidx = WoWPro.rows[WoWPro:GetActiveStickyCount()+1].index
        if WoWPro.QID[qidx] and WoWPro:IsQuestFlaggedCompleted(WoWPro.QID[qidx],true) then
            WoWPro.CompleteStep(qidx,"AutoCompleteChest")
        end
    end
end

function WoWPro.AutoComplete:AutoCompleteLevel(...)
    local newlevel = ... or _G.UnitLevel("player")
    if WoWProCharDB.Guide then
        local GID = WoWProDB.char.currentguide
        if not WoWProCharDB.Guide[GID] then return end
        for i=1,WoWPro.stepcount do
            if not WoWProCharDB.Guide[GID].completion[i]
                and WoWPro.level[i]
                and tonumber(WoWPro.level[i]) <= newlevel then
                    WoWPro.CompleteStep(i,"AutoCompleteLevel")
            end
        end
    end
end

