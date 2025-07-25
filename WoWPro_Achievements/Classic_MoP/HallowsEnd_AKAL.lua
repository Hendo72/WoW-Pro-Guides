
-- WoWPro Guides by "The WoW-Pro Community" are licensed under a Creative Commons Attribution-NonCommercial-NoDerivs 3.0 Unported License.
-- Based on a work at github.com.
-- Permissions beyond the scope of this license may be available at http://github.com/Ludovicus-Maior/WoW-Pro-Guides/blob/main/License.md.

local guide = WoWPro:RegisterGuide("TwiHollKAL",'Achievements',"Kalimdor", "WoWPro Team", "Alliance", 5)
WoWPro:GuideLevels(guide,10)
WoWPro.Achievements:GuideMisc(guide, "Tricks and Treats of Kalimdor", "Holiday", "Hallows End")
WoWPro:GuideName(guide, "Hallows End - Kalimdor")
WoWPro:GuideSteps(guide, function()
return [[

N Go to Northrend|QID|5836001|ACH|5836;;true|JUMP|TwiHallNor|S|RANK|3|
N Kalimdor Achievement|QID|5836001|M|0.0,0.0|ACH|5836;;true|N|You have the achievement for Kalimdor.\n\nLeft click to ignore|RANK|3|

U Handul of Treats|M|0.0,0.0|NC|ITEM|37586|U|37586|O|S|

P Stormwind City|QID|29074|N|Start in Stormwind|Z|Stormwind City|
P The Exodar|QID|12337|M|43.94,86.84|N|Take the portal to Exodar in the Mages Tower.|Z|Stormwind City|
A Candy Bucket |QID|12337|M|59.3,18.5|Z|The Exodar|N|The Exodar|
F Azure Watch|QID|12333|M|53.59,37.04|N|Talk to Stephanos.|Z|The Exodar|U|37586|
A Candy Bucket |QID|12333|M|48.5,49.21|Z|Azuremyst Isle|N|Azure Watch|
F Blood Watch|QID|12341|M|49.65,49.23|N|Talk to Zaldaan.|Z|Azuremyst Isle|U|37586|
A Candy Bucket |QID|12341|M|55.68,59.85|Z|Bloodmyst Isle|N|Blood Watch|

F Rut'theran Village|QID|28951|M|57.64,53.97|N|Return to Rut'theran Village.|Z|Bloodmyst Isle|U|37586|
R Enter Darnassus|QID|12334|M|55.10,88.52|Z|Teldrassil|

A Candy Bucket |QID|12334|M|62.16,33.01|Z|Darnassus|N|Darnassus|
A Dancing for Marzipan|QID|8357|M|62.31,32.92|Z|Darnassus|
C Dancing for Marzipan|QID|8357|T|/dance|N|click the button to dance.|Z|Darnassus|
T Dancing for Marzipan|QID|8357|M|62.31,32.92|Z|Darnassus|
F Dolanaar|QID|12331|M|36.74,48.01|N|Talk to Leora.|Z|Darnassus|
A Candy Bucket |QID|12331|M|55.41,52.25|Z|Teldrassil|N|Dolanaar|

F Darnassus|QID|28951|M|55.45,50.42|N|Talk to Fidelio.|Z|Teldrassil|U|37586|
R Teldrassil|QID|28951|M|37.43,50.86|N|Run through the portal.|Z|Darnassus|
F Lor'danel|QID|28951|M|55.23,88.50|N|Talk to Vesprystus.|Z|Teldrassil|
A Candy Bucket |QID|28951|M|50.77,18.86|Z|Darkshore|N|Lor'danel|

F Everlook|QID|12400|M|51.72,17.70|N|Talk to Teldira Moonfeather.|Z|Darkshore|U|37586|
A Candy Bucket |QID|12400|M|59.82,51.17|Z|Winterspring|N|Everlook|
F Talonbranch Glade|QID|28995|M|60.57,25.32|N|Talk to Mishellena.|Z|Felwood|U|37586|
A Candy Bucket |QID|28995|M|61.82,26.64|Z|Felwood|N|Talonbranch Glade|
F Whisperwind Grove|QID|28994|M|60.93,48.56|N|Talk to Maethrya.|Z|Winterspring|U|37586|
A Candy Bucket |QID|28994|M|44.55,28.95|Z|Felwood|N|Whisperwind Grove|
F Astranaar|QID|12345|M|43.65,28.66|N|Talk to Hannah Southsong.|Z|Felwood|U|37586|
A Candy Bucket |QID|12345|M|36.97,49.32|Z|Ashenvale|N|Astranaar|
F Windshear Hold|QID|29011|M|34.49,48.02|N|Talk to Daelyshia.|Z|Ashenvale|U|37586|
A Candy Bucket |QID|29011|M|59.09,56.34|Z|Stonetalon Mountains|N|Windshear Hold|
F Thal'darah Overlook|QID|29012|M|58.80,54.30|N|Talk to Allana Swiftglide.|Z|Stonetalon Mountains|U|37586|
A Candy Bucket |QID|29012|M|39.52,32.79|Z|Stonetalon Mountains|N|Thal'darah Overlook|
R Stonetalon Peak |QID|12347|M|40.6,17.7|Z|Stonetalon Mountains|U|37586|
A Candy Bucket |QID|12347|M|40.6,17.7|Z|Stonetalon Mountains|N|Stonetalon Peak|
F Farwatcher's Glen|QID|29013|M|40.07,31.94|N|Return, and talk to Teloren.|Z|Stonetalon Mountains|U|37586|
A Candy Bucket |QID|29013|M|31.50,60.68|Z|Stonetalon Mountains|N|Farwatcher's Glen|
F Northwatch Expedition Base Camp|QID|29010|M|32.02,61.79|N|Talk to Ceyora.|Z|Stonetalon Mountains|U|37586|
A Candy Bucket |QID|29010|M|71.04,79.14|Z|Stonetalon Mountains|N|Northwatch Expedition|

F Nijel's Point|QID|12348|M|70.91,80.5|N|Talk to Kaluna Songlight.|Z|Stonetalon Mountains|U|37586|
A Candy Bucket |QID|12348|M|66.32,6.67|Z|Desolace|N|Nijel's Point|
F Karnum's Glade|QID|28993|M|64.67,10.44|N|Talk to Baritanas Skyriver.|Z|Desolace
A Candy Bucket |QID|28993|M|56.76,50.06|Z|Desolace|N|Karnum's Glade|
F Dreamer's Rest|QID|28952|M|57.73,49.72|N|Talk to Lastrea Greenglae.|Z|Desolace|U|37586|
A Candy Bucket |QID|28952|M|51.04,17.78|Z|Feralas|N|Dreamer's Rest|
F Feathermoon|QID|12350|M|50.22,16.62|N|Talk to Selor|Z|Feralas|U|37586|
A Candy Bucket |QID|12350|M|46.36,45.16|Z|Feralas|N|Feathermoon|
F Cenarion Hold|QID|12401|M|46.81,45.33|N|Talk to Ireal Moonfeather.|Z|Feralas|U|37586|
A Candy Bucket |QID|12401|M|55.47,36.66|Z|Silithus|N|Cenarion Hold|
F Marshal's Stand|QID|29018|M|54.49,32.85|Z|Silithus|U|37586|
A Candy Bucket |QID|29018|M|55.22,62.19|Z|Un'Goro Crater|N|Marshal's Stand|
F Bootlegger Outpost|QID|29014|M|56.07,64.11|N|Speak to Gryle.|Z|Un'Goro Crater|U|37586|
A Candy Bucket |QID|29014|M|55.69,60.91|Z|Tanaris|N|Bootlegger Outpost|
F Gadgetzan|QID|12399|M|55.82,60.58|N|Speak to Slick Dropdip.|Z|Tanaris|U|37586|
A Candy Bucket |QID|12399|M|52.58,27.13|Z|Tanaris|N|Gadgetzan|
F Theramore|QID|12349|M|51.38,29.43|N|Speak to Bara Stonehammer|Z|Tanaris|U|37586|
A Candy Bucket |QID|12349|M|66.55,45.32|Z|Dustwallow Marsh|N|Theramore|
F Mudsprocket|QID|12398|M|67.46,51.20|N|Speak to Baldruc|Z|Dustwallow Marsh|U|37586|
A Candy Bucket |QID|12398|M|41.90,74.11|Z|Dustwallow Marsh|N|Mudsprocket|
F Fort Triumph|QID|29008|M|42.88,72.37|N|Speak to Dysilix Silvergrub|Z|Dustwallow Marsh|U|37586|
A Candy Bucket |QID|29008|M|49.08,68.42|Z|Southern Barrens|N|Fort Triumph|
F Northwatch Hold|QID|29007|M|49.16,67.87|N|Speak to Steve Stevenson|Z|Southern Barrens|U|37586|
A Candy Bucket |QID|29007|M|65.61,46.59|Z|Southern Barrens|N|Northwatch Hold|
F Honor's Stand|QID|29006|M|66.35,47.12|N|Speak to Bill Williamson|Z|Southern Barrens|U|37586|
A Candy Bucket |QID|29006|M|38.97,10.91|Z|Southern Barrens|N|Honor's Stand|
F Ratchet|QID|12396|M|38.97,10.91|N|Speak to John Johnson|Z|Southern Barrens|U|37586|
A Candy Bucket |QID|12396|M|67.34,74.60|Z|Northern Barrens|N|Ratchet|

N Proceed to Northrend|JUMP|TwiHallNor|
N This completes Hallow's End for Kalimdor.

]]
end)
