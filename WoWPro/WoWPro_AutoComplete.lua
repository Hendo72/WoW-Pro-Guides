-- luacheck: globals pairs ipairs next tinsert tostring tonumber _G

-------------------------------
--      WoWPro_AutoComplete      --
-------------------------------

WoWPro.AutoComplete = WoWPro:NewModule("AutoComplete")
WoWPro:Embed(WoWPro.AutoComplete)
WoWPro.AutoComplete.Version = WoWPro.Version

function WoWPro.AutoComplete:OnEnable()
    WoWPro:dbp("|cff33ff33Enabled|r: AutoComplete Module")

    self.eventHandlers = {
        UNIT_AURA = self.AutoCompleteBuff,
        ZONE_CHANGED = self.AutoCompleteZone,
        ZONE_CHANGED_INDOORS = self.AutoCompleteZone,
        ZONE_CHANGED_NEW_AREA = self.AutoCompleteZone,
        PLAYER_LEVEL_UP = self.AutoCompleteLevel,
        QUEST_LOG_UPDATE = self.AutoCompleteQuestUpdate,
        CHAT_MSG_SYSTEM = self.AutoCompleteSetHearth,
        CRITERIA_COMPLETE = self.AutoCompleteCriteria,
        SCENARIO_CRITERIA_UPDATE = self.AutoCompleteCriteria,
    }
end

function WoWPro.AutoComplete:OnDisable()
    self.eventHandlers = nil
end

function WoWPro.AutoComplete:OnEvent(event, ...)
    if not self.eventHandlers then return end
    local handler = self.eventHandlers[event]
    if handler then
        return handler(self, ...)
    end
end

-- Stub implementations; actual logic can be migrated from WoWPro_Events.lua.

function WoWPro.AutoComplete:AutoCompleteBuff(unit, ...)
    -- TODO: migrate UNIT_AURA buff completion logic here.
end

function WoWPro.AutoComplete:AutoCompleteZone()
    -- TODO: migrate zone-based completion logic here.
end

function WoWPro.AutoComplete:AutoCompleteLoot()
    -- TODO: migrate loot-based completion logic here.
end

function WoWPro.AutoComplete:AutoCompleteQuestUpdate(questComplete)
    -- TODO: migrate quest update completion logic here.
end

function WoWPro.AutoComplete:AutoCompleteSetHearth(...)
    -- TODO: migrate hearth setting completion logic here.
end

function WoWPro.AutoComplete:AutoCompleteLevel(...)
    -- TODO: migrate level-based completion logic here.
end

function WoWPro.AutoComplete:AutoCompleteCriteria()
    -- TODO: migrate criteria completion logic here.
end

function WoWPro.AutoComplete:AutoCompleteChest()
    -- TODO: migrate chest completion logic here.
end

function WoWPro.AutoComplete:AutoCompleteGetFP(...)
    -- TODO: migrate flight-point completion logic here.
end
