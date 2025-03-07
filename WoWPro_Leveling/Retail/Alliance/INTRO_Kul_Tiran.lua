local guide = WoWPro:RegisterGuide("KulTiran", "Leveling", "Stormwind City", "WoWPro Team", "Alliance")
WoWPro:GuideLevels(guide, 10, 10)
WoWPro:GuideSort(guide, 11)
WoWPro:GuideContent(guide, "Intro")
WoWPro:GuideNickname(guide, "Kul Tiran: Intro")
WoWPro:GuideName(guide,"Kul Tiran: Intro")
WoWPro:GuideRaceSpecific(guide,"KulTiran")
WoWPro:GuideNextGuide(guide, "Chromie Time")
WoWPro:GuideSteps(guide, function()
return
[[
A For the Alliance|QID|55142|M|67.70,21.78|Z|Boralus|N|From Katherine Proudmoore.|
C For the Alliance|QID|55142|M|70.12,16.79|Z|Boralus|NC|N|Run to the Portal room and take the port to Stormwind.|
T For the Alliance|QID|55142|M|53.06,15.26|Z|84;Stormwind City|N|To Ambassador Moorgard.|
A Stranger in a Strange Land|QID|55146|M|53.06,15.26|Z|84;Stormwind City|N|From Ambassador Moorgard.|PRE|55142|
C Stranger in a Strange Land|QID|55146|M|56.02,17.34|Z|84;Stormwind City|N|Talk to Chromie.|CHAT|
T Stranger in a Strange Land|QID|55146|M|56.06,17.69|Z|84;Stormwind City|N|To Provisioner Fray.|
N It's Chromie Time!|QID|62567|M|62.25,29.93|Z|84;Stormwind City|JUMP|Chromie Time|N|Congratulations on hitting level 10.\n\nYou can now accept Chromie's Call at the Hero's Call board in Stormwind. This will allow you to choose which expansion you want to level in.\n\n Click the guide button next to this frame to direct you to Chromie!|CT|
]]
end)
