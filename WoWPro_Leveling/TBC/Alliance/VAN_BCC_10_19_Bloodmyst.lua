local guide = WoWPro:RegisterGuide("CLASSIC_BC_Bloodmyst", "Leveling", "Bloodmyst Isle", "WowPro Team", "Alliance", 2)
WoWPro:GuideSort(guide, 6)
WoWPro:GuideNextGuide(guide, 'CLASSIC_BC_19_25_Alliance')
WoWPro:GuideLevels(guide, 10, 20)
WoWPro:GuideSteps(guide, function()
return [[
N Breadcrumbs|LEAD|9634|AVAILABLE|9625&28559|Z|1950;Bloodmyst Isle|N|There are two quests to lead you to Bloodmyst Isle.\nIf you did 'Coming of Age' in Azuremyst Isle, you can get 'Elekks Are Serious Business' from Torallius the Pack Handler outside The Exodar. Otherwise, you can get 'Hero's Call: Bloodmyst Isle!' from the Hero's Callboard inside The Exodar.\nTake either of these two quests before heading north to Bloodmyst Isle.|
R Bloodmyst Isle|ACTIVE|9625^28559|M|65.25,94.00|Z|1950;Bloodmyst Isle|N|Follow the road north to Bloodmyst Isle.|
T Elekks Are Serious Business|QID|9625|M|63.03,87.90|Z|1950;Bloodmyst Isle|N|To Vorkhan the Elekk Herder.|
T Hero's Call: Bloodmyst Isle!|QID|28559|M|63.03,87.90|Z|1950;Bloodmyst Isle|N|To Vorkhan the Elekk Herder.|
A Alien Predators|QID|9634|M|63.03,87.90|Z|1950;Bloodmyst Isle|N|From Vorkhan the Elekk Herder.| ; Non-Draenei
A A Favorite Treat|QID|9624|M|63.4,88.8|Z|1950;Bloodmyst Isle|N|{coords}From Aonar.| ; Non-Draenei
C Redemption|QID|9600|M|65.30,77.56|Z|1950;Bloodmyst Isle|N|.|U|6866|R|Draenei|C|Paladin|
A The Kessel Run|QID|9663|M|62.99,87.52|Z|1950;Bloodmyst Isle|N|From Kessel.NOTE You have 15 minutes to hand in this quest.\nThe mount you're given can't be resummoned if you lose it.\nIt can be done without the mount, but it'll take substantially longer.| ; Non-Draenei
C The Kessel Run|QID|9663|QO|1|M|46.7,20.8|Z|Azuremyst Isle|N|{coords}Warn High Chief Stillpine outside Stillpine Hold.NOTE Do what you can to avoid losing your mount.|
C The Kessel Run|QID|9663|QO|2|M|47.2,50.6|Z|Azuremyst Isle|N|{coords}Warn Exarch Menelaous in Azure Watch.NOTE Do what you can to avoid losing your mount.|
C The Kessel Run|QID|9663|QO|3|M|47.0,70.2|Z|Azuremyst Isle|N|{coords}Warn Admiral Odyseus at Odesyus' Landing.NOTE Do what you can to avoid losing your mount.|
T Redemption|QID|9600|M|38.39,82.52|Z|The Exodar|N|From Jol.|
T The Kessel Run|QID|9663|M|62.99,87.52|Z|1950;Bloodmyst Isle|N|To Kessel at Kessel's Crossing.|
A Declaration of Power|QID|9666|PRE|9663|M|62.99,87.52|Z|1950;Bloodmyst Isle|N|From Kessel.| ; Non-Draenei
A Catch and Release|QID|9629|M|53.25,57.75|Z|1950;Bloodmyst Isle|N|From Morae in Blood Watch.| ; Non-Draenei
r Repair/Restock|QID|9693|M|53.32,56.67|Z|1950;Bloodmyst Isle|N|Repair/Sell Junk at Beega.NOTECONT|
A Learning from the Crystals|QID|9581|M|52.58,53.21|Z|1950;Bloodmyst Isle|N|From Harbinger Mikolaas.| ; Non-Draenei
A What Argus Means to Me|QID|9693|M|52.67,53.21|Z|1950;Bloodmyst Isle|N|From Exarch Admetius.| ; Non-Draenei
T What Argus Means to Me|QID|9693|M|55.43,55.27|Z|1950;Bloodmyst Isle|N|To Vindicator Boros.|
A Blood Watch|QID|9694|PRE|9693|M|55.43,55.27|Z|1950;Bloodmyst Isle|N|From Vindicator Boros.| ; Non-Draenei
f Blood Watch|QID|9634|M|57.69,53.88|Z|1950;Bloodmyst Isle|N|Get the Blood Watch flight path from Laando.|
A Maatparm Mushroom Menagerie|QID|9648|M|56.42,56.82|Z|1950;Bloodmyst Isle|N|From Maatparm.| ; Non-Draenei
A WANTED: Deathclaw|QID|9646|M|55.23,59.11|Z|1950;Bloodmyst Isle|N|From the Wanted Board outside the Inn.| ; Non-Draenei
h Blood Watch|QID|9624|M|55.84,59.80|Z|1950;Bloodmyst Isle|N|Set hearthstone to Blood Watch with Caregiver Topher Loaal.|
; This section is specifically for Draenei
A Beds, Bandages, and Beyond|QID|9603|M|55.84,59.80|Z|1950;Bloodmyst Isle|N|From Caregiver Topher Loaal.|R|Draenei|
T Beds, Bandages, and Beyond|QID|9603|M|57.69,53.88|Z|1950;Bloodmyst Isle|N|To Laando (the Flight Master).|R|Draenei|
A On the Wings of a Hippogryph|QID|9604|PRE|9603|M|57.69,53.88|Z|1950;Bloodmyst Isle|N|From Laando.|R|Draenei|
F The Exodar|ACTIVE|9604|M|57.69,53.88|Z|1950;Bloodmyst Isle|N|Fly to the Exodar.|R|Draenei|
T On the Wings of a Hippogryph|QID|9604|M|57.03,50.14|Z|The Exodar|N|To Nurguni inside The Exodar.|R|Draenei|
A Hippogryph Master Stephanos|QID|9605|PRE|9604|M|57.03,50.14|Z|The Exodar|N|From Nurguni.|R|Draenei|
r Housekeeping|AVAILABLE|9606|N|While in The Exodar, take a minute to visit the bank to pick up or drop off items, the Auction House, or any of the profession trainers before you leave.\n[color=FF0000]NOTE: [/color]Manually check this step off when you are done.|
T Hippogryph Master Stephanos|QID|9605|M|68.44,63.67|Z|The Exodar|N|To Hippogryph Master Stephanos standing outside The Exodar.|R|Draenei|
A Return to Topher Loaal|QID|9606|PRE|9605|M|68.44,63.67|Z|The Exodar|N|From Stephanos.|R|Draenei|
F Blood Watch|QID|9606|M|54.33,36.73|Z|The Exodar|N|Fly back to Blood Watch.|R|Draenei|
T Return to Topher Loaal|QID|9606|M|55.84,59.80|Z|1950;Bloodmyst Isle|N|To Caregiver Topher Loaal.|R|Draenei|
;
C Maatparm Mushroom Menagerie|QID|9648|QO|2|M|59,60|Z|1950;Bloodmyst Isle|N|{coords}Obtain a Blood Mushroom, they are small and glow red.|
C Maatparm Mushroom Menagerie|QID|9648|QO|1|M|63.75,62.90|Z|1950;Bloodmyst Isle|N|Obtain an Aquatic Stinkhorn from Stinkhorn Striker in the Blood River.|
C Maatparm Mushroom Menagerie|QID|9648|QO|3|M|67,66|CN|Z|1950;Bloodmyst Isle|N|{coords}Obtain a Ruinous Polyspore, they are black/grey and tan.|
C Declaration of Power|QID|9666|QO|1|M|68.8,67.3|CN|Z|1950;Bloodmyst Isle|N|{coords}Kill Lord Xiz.|
C Declaration of Power|QID|9666|QO|2|M|68.8,67.3|CN|Z|1950;Bloodmyst Isle|N|{coords}Plant the banner at the corpse of Lord Xiz.|U|24084|
C A Favorite Treat|QID|9624|M|68.2,81.2|Z|1950;Bloodmyst Isle|N|{coords}Pick up Sand Pears.|S|
A Saving Princess Stillpine|QID|9667|PRE|9559|M|68.2,81.2|Z|1950;Bloodmyst Isle|N|{coords}From Princess Stillpine.| ; Non-Draenei
C Saving Princess Stillpine|QID|9667|M|64.25,76.50|CC|Z|1950;Bloodmyst Isle|L|24099|N|Head north-west to the small camp, killing furbolgs there until High Chief Bristlelimb spawns and yells 'Face the wrath of Bristlelimb!' - kill him, and loot the key.|
C Saving Princess Stillpine|QID|9667|M|68.2,81.2|Z|1950;Bloodmyst Isle|N|{coords}Open Princess Stillpine's cage.|
C Alien Predators|QID|9634|M|58.3,86.28|Z|1950;Bloodmyst Isle|N|Kill Bloodmyst Hatchlings.|S|
C Learning from the Crystals|QID|9581|M|58.25,83.44|Z|1950;Bloodmyst Isle|N|Use your Crystal Mining Pick on the Impact Site Crystal.|U|23875|
C Alien Predators|QID|9634|M|58.3,86.28|Z|1950;Bloodmyst Isle|N|Kill Bloodmyst Hatchlings.|US|
C A Favorite Treat|QID|9624|M|59.4,88.39|Z|1950;Bloodmyst Isle|N|Finish picking up the Sand Pears at the base of the trees.|US|
T A Favorite Treat|QID|9624|M|63.43,88.78|Z|1950;Bloodmyst Isle|N|To Aonar.|
T Alien Predators|QID|9634|M|63.05,87.92|Z|1950;Bloodmyst Isle|N|To Vorkhan the Elekk Herder.|
T Declaration of Power|QID|9666|M|62.99,87.54|Z|1950;Bloodmyst Isle|N|To Kessel.|
A Report to Exarch Admetius|QID|9668|PRE|9666|M|62.99,87.54|Z|1950;Bloodmyst Isle|N|From Kessel.| ; Non-Draenei
C Catch and Release|QID|9629|M|43.8,93.3|Z|1950;Bloodmyst Isle|N|{coords}Use the Murloc Tagger on 6 Blacksilt Scouts.|U|23995|S|
l Red Crystal Pendant|QID|9576|M|49.5,94.8;34.6,93.1|CN|Z|1950;Bloodmyst Isle|L|23870|ITEM|23870|N|Cruelfin.NOTE He patrols along the south coast, spawning on the east side.|T|Cruelfin|
A Cruelfin's Necklace|QID|9576|N|Accept the quest.|U|23870| ; Non-Draenei
C Catch and Release|QID|9629|M|43.8,93.3|Z|1950;Bloodmyst Isle|N|{coords}Continue to use the Murloc Tagger on 6 Blacksilt Scouts.|U|23995|US|
C Maatparm Mushroom Menagerie|QID|9648|QO|4|M|44,78;35,79|CN|Z|1950;Bloodmyst Isle|N|{coords}Obtain a Fel Cone Fungus. They're kind of grey brown in comparison to the rest of the mushrooms they're with.|
H Blood Watch|QID|9576|M|55.84,59.80|Z|1950;Bloodmyst Isle|N|Hearth or run back to Blood Watch.|
T Cruelfin's Necklace|QID|9576|M|53.25,57.75|Z|1950;Bloodmyst Isle|N|To Morae.|
T Catch and Release|QID|9629|M|53.25,57.75|Z|1950;Bloodmyst Isle|N|To Morae.|
A Victims of Corruption|QID|9574|PRE|9629|M|53.25,57.75|Z|1950;Bloodmyst Isle|N|From Morae.| ; Non-Draenei
r Repair/Restock |QID|9668|M|53.32,56.67|Z|1950;Bloodmyst Isle|N|Repair/Sell Junk at Beega.NOTECONT|
T Learning from the Crystals|QID|9581|M|52.60,53.22|Z|1950;Bloodmyst Isle|N|To Harbringer Mikolaas.|
A The Missing Survey Team|QID|9620|PRE|9581|M|52.60,53.22|Z|1950;Bloodmyst Isle|N|From Harbringer Mikolaas.| ; Non-Draenei
T Report to Exarch Admetius|QID|9668|M|52.68,53.22|Z|1950;Bloodmyst Isle|N|To Exarch Admetius.|
T Saving Princess Stillpine|QID|9667|M|55.15,55.99|Z|1950;Bloodmyst Isle|N|To Stillpine Ambassador Frasaboo.|
T Maatparm Mushroom Menagerie|QID|9648|M|56.42,56.82|Z|1950;Bloodmyst Isle|N|To Maatparm.|
T The Missing Survey Team|QID|9620|M|61.23,48.38|Z|1950;Bloodmyst Isle|N|To the corpse of the Draenei Cartographer.|
A Salvaging the Data|QID|9628|PRE|9620|M|61.23,48.38|Z|1950;Bloodmyst Isle|N|From the corpse of the Draenei Cartographer.| ; Non-Draenei
C Salvaging the Data|QID|9628|M|61.23,48.38|Z|1950;Bloodmyst Isle|N|Kill Nagas until the Survey Data Crystal Drops.|
C Victims of Corruption|QID|9574|M|49,73|Z|1950;Bloodmyst Isle|N|{coords}Kill Corrupted Treants for the bark.|S|
C Blood Watch|QID|9694|M|49,47|Z|1950;Bloodmyst Isle|N|{coords}Kill Sunhawk Spies north of Blood Watch.|
T Salvaging the Data|QID|9628|M|52.6,53.23|Z|1950;Bloodmyst Isle|N|To Harbringer Mikolaas.|
A The Second Sample|QID|9584|PRE|9628|M|52.6,53.23|Z|1950;Bloodmyst Isle|N|From Harbringer Mikolaas.| ; Non-Draenei
T Blood Watch|QID|9694|M|55.43,55.27|Z|1950;Bloodmyst Isle|N|To Vindicator Boros.|
A Intercepting the Message|QID|9779|PRE|9694|M|55.43,55.27|Z|1950;Bloodmyst Isle|N|From Vindicator Boros.| ; Non-Draenei
A Know Thine Enemy|QID|9567|M|55.1,58.0|Z|1950;Bloodmyst Isle|N|{coords}From Vindicator Aalesia.| ; Non-Draenei
r Repair/Restock |QID|9668|M|53.32,56.67|Z|1950;Bloodmyst Isle|N|Repair/Sell Junk at Beega.NOTECONT|
;This quest is currently bugged on BCC due to sharding issues
;l Tzerak's Armor Plate|AVAILABLE|9594|M|38.41,82.02|Z|1950;Bloodmyst Isle|L|23900|ITEM|23900|N|Tzerak.NOTE He looks like a Felguard. If you don't see him, grind on Satyrs until he yells as he spawns.|
;A Signs of the Legion|QID|9594|M|PLAYER|Z|1950;Bloodmyst Isle|CC|N|From Tzerak's Armor Plate.|U|23900|O| ; Non-Draenei
C Signs of the Legion|QID|9594|M|35.54,77.43|Z|1950;Bloodmyst Isle|N|Kill Satyrs and Felsworns|S|
C Know Thine Enemy|QID|9567|M|36.49,71.36|Z|1950;Bloodmyst Isle|L|23859|N|Loot the Nazzivus Monument Glyph|
C Signs of the Legion|QID|9594|M|35.54,77.43|Z|1950;Bloodmyst Isle|N|Finish killing Satyrs and Felsworns.|US|
C Victims of Corruption|QID|9574|M|49,73|Z|1950;Bloodmyst Isle|N|{coords}Kill Corrupted Treants for the bark.|US|
H Blood Watch|QID|9567|M|55.84,59.80|Z|1950;Bloodmyst Isle|N|Hearth to Blood Watch|
T Know Thine Enemy|QID|9567|M|55.1,58.0|Z|1950;Bloodmyst Isle|N|{coords}To Vindicator Aalesia.|
T Signs of the Legion|QID|9594|M|55.1,58.0|Z|1950;Bloodmyst Isle|N|{coords}To Vindicator Aalesia, after a very short dialog.|
A Containing the Threat|QID|9569|PRE|9567|M|55.1,58.0|Z|1950;Bloodmyst Isle|N|{coords}From Vindicator Aalesia.| ; Non-Draenei
T Victims of Corruption|QID|9574|M|53.24,57.73|Z|1950;Bloodmyst Isle|N|To Morae.|
A Irradiated Crystal Shards|QID|9641|M|55.43,55.27|Z|1950;Bloodmyst Isle|L|23984 10|N|If you already have 10 Irradiated Crystal Shards, then accept this quest from Vindicator Boros.|O| ; Non-Draenei
T Irradiated Crystal Shards|QID|9641|M|55.43,55.27|Z|1950;Bloodmyst Isle|N|To Vindicator Boros.|O|
r Repair/Restock |QID|9584|M|53.32,56.67|Z|1950;Bloodmyst Isle|N|Repair/Sell Junk at Beega.NOTECONT|
C Intercepting the Message|QID|9779|M|45.75,47.62|Z|1950;Bloodmyst Isle|N|Kill Sunhawk Spies until the Sunhawk Missive drops.|S|
C The Second Sample|QID|9584|M|45.75,47.62|Z|1950;Bloodmyst Isle|N|Use the Crystal Mining Pick on the Altered Crystal Sample.|U|23876|
C Intercepting the Message|QID|9779|M|45.75,47.62|Z|1950;Bloodmyst Isle|N|Kill Sunhawk Spies until the Sunhawk Missive drops.|US|
T The Second Sample|QID|9584|M|52.6,53.23|Z|1950;Bloodmyst Isle|N|To Harbinger Mikolaas.|
A The Final Sample|QID|9585|PRE|9584|M|52.6,53.23|Z|1950;Bloodmyst Isle|N|From Harbinger Mikolaas.| ; Non-Draenei
T Intercepting the Message|QID|9779|M|55.43,55.27|Z|1950;Bloodmyst Isle|N|To Vindicator Boros.|
A Translations...|QID|9696|PRE|9779|M|55.43,55.27|Z|1950;Bloodmyst Isle|N|From Vindicator Boros.| ; Non-Draenei
T Translations...|QID|9696|M|54.4,54.4|Z|1950;Bloodmyst Isle|N|{coords}To Interrogator Elysia.|
A Audience with the Prophet|QID|9698|PRE|9696|M|54.4,54.4|Z|1950;Bloodmyst Isle|N|{coords}From Interrogator Elysia.| ; Non-Draenei
F The Exodar |QID|9698|M|57.7,53.9|Z|1950;Bloodmyst Isle|N|{coords}Fly to The Exodar.|
T Audience with the Prophet|QID|9698|M|32.9,54.5|Z|The Exodar|N|{coords}To Prophet Velen.|
A Truth or Fiction|QID|9699|PRE|9698|M|32.9,54.5|Z|The Exodar|N|{coords}To Prophet Velen.| ; Non-Draenei
N Training and banking|QID|9699|N|Train your professions, visit bank etc. while you're here. Close to continue.|R|Draenei|
F Blood Watch |QID|9699|M|68.51,63.61|Z|The Exodar|N|If your hearth is up, use it to get back to Blood Watch. Otherwise, fly back to Bloodmyst Isle.|
T Truth or Fiction|QID|9699|M|55.43,55.27|Z|1950;Bloodmyst Isle|N|To Vindicator Boros.|
A I Shoot Magic Into the Darkness|QID|9700|PRE|9699|M|55.43,55.27|Z|1950;Bloodmyst Isle|N|From Vindicator Boros.| ; Non-Draenei
r Repair/Restock |QID|10063|M|53.32,56.67|Z|1950;Bloodmyst Isle|N|Repair/Sell Junk at Beega.NOTECONT|
A Constrictor Vines|QID|9643|M|55.83,56.93|Z|1950;Bloodmyst Isle|N|From Tracker Lyceon.| ; Non-Draenei
A The Bear Necessities|QID|9580|M|55.83,56.93|Z|1950;Bloodmyst Isle|N|From Tracker Lyceon.| ; Non-Draenei
A Explorers' League, Is That Something for Gnomes?|QID|10063|LEAD|9549|M|56.3,54.2|Z|1950;Bloodmyst Isle|N|{coords}From Prospector Nachlan.| ; Non-Draenei
C Constrictor Vines|QID|9643|M|45.9,33.9|Z|1950;Bloodmyst Isle|N|{coords}Kill Mutated Constrictors for 6 Thorny Constrictor Vines.|S|
C The Bear Necessities|QID|9580|M|45.9,33.9|Z|1950;Bloodmyst Isle|N|{coords}Kill Elder Brown Bears until you have 8 flanks.|S|
T Explorers' League, Is That Something for Gnomes?|QID|10063|M|42.11,21.23|Z|1950;Bloodmyst Isle|N|To Clopper Wizbang.|
A Pilfered Equipment|QID|9548|M|42.11,21.23|Z|1950;Bloodmyst Isle|N|From Clopper Wizbang.| ; Non-Draenei
A Artifacts of the Blacksilt|QID|9549|M|42.11,21.23|Z|1950;Bloodmyst Isle|N|From Clopper Wizbang.| ; Non-Draenei
C Artifacts of the Blacksilt|QID|9549|M|41.38,20.11|Z|1950;Bloodmyst Isle|N|Kill murlocs for Idols and Knives.|S|
C Pilfered Equipment|QID|9548|M|38.4,22.4;40.4,20;44,22.4;46.4,20.4|CN|Z|1950;Bloodmyst Isle|N|{coords}Watch for Clopper's Equipment.|S|
C WANTED: Deathclaw|QID|9646|M|37,30|Z|1950;Bloodmyst Isle|N|{coords}Kill Deathclaw, and loot his Paw.|
C Artifacts of the Blacksilt|QID|9549|M|41.38,20.11|Z|1950;Bloodmyst Isle|N|Kill murlocs for Idols and Knives.|US|
C Pilfered Equipment|QID|9548|M|38.4,22.4;40.4,20;44,22.4;46.4,20.4|CN|Z|1950;Bloodmyst Isle|N|{coords}Look for Clopper's Equipment.|US|
T Artifacts of the Blacksilt|QID|9549|M|42.11,21.23|Z|1950;Bloodmyst Isle|N|To Clopper Wizbang.|
T Pilfered Equipment|QID|9548|M|42.11,21.23|Z|1950;Bloodmyst Isle|N|To Clopper Wizbang.|
A A Map to Where?|QID|9550|PRE|9549|N|Click the Weathered Treasure Map you just got to start the next quest.|U|23837| ; Non-Draenei
C I Shoot Magic Into the Darkness|QID|9700|M|51.81,21.77|Z|1950;Bloodmyst Isle|N|Kill Void Anomalies, and approach the entrance to the Warp Piston to get the complete message|
C Constrictor Vines|QID|9643|M|45.9,33.9|Z|1950;Bloodmyst Isle|N|{coords}Kill Mutated Constrictors for 6 Thorny Constrictor Vines.|US|
C The Bear Necessities|QID|9580|M|46.15,34.62;48.77,24.08|CN|Z|1950;Bloodmyst Isle|N|Finish killing Elder Brown Bears until you have 8 flanks.|US|
T A Map to Where?|QID|9550|M|61.19,41.78|Z|1950;Bloodmyst Isle|N|There's a book you have to click in order to complete.|
A Deciphering the Book|QID|9557|PRE|9550|M|61.19,41.78|Z|1950;Bloodmyst Isle|N|From the Battered Ancient Book.| ; Non-Draenei
H Blood Watch|QID|9643|M|55.04,59.33|Z|1950;Bloodmyst Isle|N|Hearth or run back to Blood Watch.|
T Constrictor Vines|QID|9643|M|55.83,56.93|Z|1950;Bloodmyst Isle|N|To Tracker Lyceon.|
T The Bear Necessities|QID|9580|M|55.83,56.93|Z|1950;Bloodmyst Isle|N|To Tracker Lyceon.|
A Culling the Flutterers|QID|9647|PRE|9580^9643|M|55.83,56.93|Z|1950;Bloodmyst Isle|N|From Tracker Lyceon.| ; Non-Draenei
T I Shoot Magic Into the Darkness|QID|9700|M|55.43,55.27|Z|1950;Bloodmyst Isle|N|To Vindicator Boros.|
A The Cryo-Core|QID|9703|PRE|9700|M|55.64,55.28|Z|1950;Bloodmyst Isle|N|From Vindicator Kuros.| ; Non-Draenei
T Deciphering the Book|QID|9557|M|54.69,54.01|Z|1950;Bloodmyst Isle|N|To Anchorite Paetheus.|
A Nolkai's Words|QID|9561|PRE|9557|M|54.69,54.01|Z|1950;Bloodmyst Isle|N|From Anchorite Paetheus.| ; Non-Draenei
T WANTED: Deathclaw|QID|9646|M|52.63,53.27|Z|1950;Bloodmyst Isle|N|To Harbinger Mikolaas.|
A Searching for Galaen|QID|9578|M|53.25,57.75|Z|1950;Bloodmyst Isle|N|From Morae.| ; Non-Draenei
r Repair/Restock |QID|9578|M|53.32,56.67|Z|1950;Bloodmyst Isle|N|Repair/Sell Junk at Beega.NOTECONT|
C Culling the Flutterers|QID|9647|M|47.21,32.72;43.5,36.58|CN|Z|1950;Bloodmyst Isle|N|Kill every Royal Blue Flutterer you see.|S|
C The Cryo-Core|QID|9703|M|39.27,60.42|Z|1950;Bloodmyst Isle|N|Loot Medical Supplies from the ground and from Blood Elves.|S|
T Searching for Galaen|QID|9578|M|37.51,61.27|Z|1950;Bloodmyst Isle|N|To Galaen's Coprse.|
A Galaen's Fate|QID|9579|PRE|9578|M|37.51,61.27|Z|1950;Bloodmyst Isle|N|From Galaen's Coprse.| ; Non-Draenei
A Galaen's Journal - The Fate of Vindicator Saruan|QID|9706|PRE|9779|N|From the book on the ground next to Galaen's Coprse.| ; Non-Draenei
C Galaen's Fate|QID|9579|M|39.27,60.42|Z|1950;Bloodmyst Isle|N|The amulet drops off of the Blood Elves outside the Cryo Core.|
C The Cryo-Core|QID|9703|M|39.27,60.42|Z|1950;Bloodmyst Isle|N|Loot Medical Supplies from the ground and from Blood Elves.|US|
C Culling the Flutterers|QID|9647|M|47.21,32.72;43.5,36.58|CN|Z|1950;Bloodmyst Isle|N|{coords}Go between the waypoints, and kill the last Royal Blue Flutterers that you need.|US|
T Culling the Flutterers|QID|9647|M|55.83,56.93|Z|1950;Bloodmyst Isle|N|To Tracker Lyceon.|
T Galaen's Journal - The Fate of Vindicator Saruan|QID|9706|M|55.64,55.28|Z|1950;Bloodmyst Isle|N|To Vindicator Kuros.|
A Matis the Cruel|QID|9711|PRE|9706|M|55.64,55.28|Z|1950;Bloodmyst Isle|N|From Vindicator Kuros.| ; Non-Draenei
T The Cryo-Core|QID|9703|M|55.64,55.28|Z|1950;Bloodmyst Isle|N|To Vindicator Kuros.|
A Don't Drink the Water|QID|9748|PRE|9703|M|55.57,55.38|Z|1950;Bloodmyst Isle|N|From Vindicator Aesom.| ; Non-Draenei
T Galaen's Fate|QID|9579|M|53.25,57.75|Z|1950;Bloodmyst Isle|N|To Morae.|
A Talk to the Hand|QID|10064|M|52.58,53.21|Z|1950;Bloodmyst Isle|N|From Harbinger Mikolaas.| ; Non-Draenei
r Repair/Restock |QID|10064|M|53.32,56.67|Z|1950;Bloodmyst Isle|N|Repair/Sell Junk at Beega.NOTECONT|
C Containing the Threat|QID|9569|M|41.6,29.8|Z|1950;Bloodmyst Isle|N|{coords}Head back to Axxarien. Collect 5 Corrupted Crystals while killing Hellcallers and Shadowstalkers, on the way to kill Zevrax.|S|
C The Final Sample|QID|9585|M|41.6,29.8|Z|1950;Bloodmyst Isle|N|{coords}Use the pick on the Axxarien crystal (it's the big one - you need to stand right next to it)|U|23877|
C Containing the Threat|QID|9569|M|41.6,29.8|Z|1950;Bloodmyst Isle|N|{coords}Head back to Axxarien. Collect 5 Corrupted Crystals while killing Hellcallers and Shadowstalkers, on the way to kill Zevrax.|US|
C Don't Drink the Water|QID|9748|M|34.37,33.56|Z|1950;Bloodmyst Isle|N|Jump down the waterfall, and use your flask.|U|24318|
H Blood Watch|QID|9569|M|55.04,59.33|Z|1950;Bloodmyst Isle|N|Hearth or run back to Blood Watch.|
T Containing the Threat|QID|9569|M|55.05,58.01|Z|1950;Bloodmyst Isle|N|To Vindicator Aalesia.|
T Don't Drink the Water|QID|9748|M|55.57,55.38|Z|1950;Bloodmyst Isle|N|To Vindicator Aesom.|
A Limits of Physical Exhaustion|QID|9746|PRE|9748|M|55.57,55.38|Z|1950;Bloodmyst Isle|N|From Vindicator Aesom.| ; Non-Draenei
A What We Know...|QID|9753|M|55.6,55.4|Z|1950;Bloodmyst Isle|N|{coords}From Vindicator Aesom.|LVL|18|
T The Final Sample|QID|9585|M|52.58,53.21|Z|1950;Bloodmyst Isle|N|To Harbinger Mikolaas.|
T What We Know...|QID|9753|M|52.66,53.23|Z|1950;Bloodmyst Isle|N|To Exarch Admetius.|
A What We Don't Know...|QID|9756|PRE|9753|M|52.66,53.23|Z|1950;Bloodmyst Isle|N|From Exarch Admetius.|
C What We Don't Know...|QID|9756|M|54.4,54.3|Z|1950;Bloodmyst Isle|N|{coords}Talk to the prisoner.|
T What We Don't Know...|QID|9756|M|52.66,53.23|Z|1950;Bloodmyst Isle|N|To Exarch Admetius.|
A Vindicator's Rest|QID|9760|PRE|9756|M|52.66,53.23|Z|1950;Bloodmyst Isle|N|From Exarch Admetius.|
A The Missing Expedition|QID|9669|M|53.3,57.0|Z|1950;Bloodmyst Isle|N|{coords}From Achelus.| ; Non-Draenei
C Matis the Cruel|QID|9711|M|31.5,48|Z|1950;Bloodmyst Isle|N|{coords}Use the flare gun! When you get into range, just use your flare gun, and the quest is easy. He pats along the road, you should see him somewhere near Vindicator's Rest.|T|Matis the Cruel|U|24278|
T Vindicator's Rest|QID|9760|M|30.6,46.6|Z|1950;Bloodmyst Isle|N|{coords}To Vindicator Corin.|
A Fouled Water Spirits|QID|10067|M|30.6,46.6|Z|1950;Bloodmyst Isle|N|{coords}From Vindicator Corin.| ; Non-Draenei
A Oh, the Tangled Webs They Weave|QID|10066|M|30.6,46.6|Z|1950;Bloodmyst Isle|N|{coords}From Vindicator Corin.| ; Non-Draenei
T Talk to the Hand|QID|10064|M|30.27,45.94|Z|1950;Bloodmyst Isle|N|To Scout Joril.|
A Cutting a Path|QID|10065|M|30.28,45.88|Z|1950;Bloodmyst Isle|N|From Scout Joril.| ; Non-Draenei
A Critters of the Void|QID|9741|M|30.28,45.88|Z|1950;Bloodmyst Isle|N|From Scout Loryi.| ; Non-Draenei
C Cutting a Path|QID|10065|M|31.25,56.68|Z|1950;Bloodmyst Isle|N|Kill 10 Enraged Ravagers.|S|
C Oh, the Tangled Webs They Weave|QID|10066|M|31.25,56.68|Z|1950;Bloodmyst Isle|N|Kill 8 Mutated Tanglers.|
C Cutting a Path|QID|10065|M|31.25,56.68|Z|1950;Bloodmyst Isle|N|Kill 10 Enraged Ravagers.|US|
C Limits of Physical Exhaustion|QID|9746|M|26.44,52.54|Z|1950;Bloodmyst Isle|N|Kill Sunhawk Pyromancers and Defenders.|S|
C Critters of the Void|QID|9741|M|18.70,63.61|Z|1950;Bloodmyst Isle|N|Kill 12 Void Critters. They are small and can be hard to target sometimes.|
C Limits of Physical Exhaustion|QID|9746|M|26.44,52.54|Z|1950;Bloodmyst Isle|N|Finish killing Sunhawk Pyromancers and Defenders.|US|
A They're Alive! Maybe...|QID|9670|M|24.9,34.3|Z|1950;Bloodmyst Isle|N|{coords}From Researcher Cornelius.| ; Non-Draenei
C Fouled Water Spirits|QID|10067|M|28.92,36.47|Z|1950;Bloodmyst Isle|N|Kill 6 Fouled Water Spirits.|S|
C They're Alive! Maybe...|QID|9670|M|22,36|Z|1950;Bloodmyst Isle|N|{coords}Attack the Webbed Creatures. You may free a Researcher, or you may get a hostile mob.|S|
C The Missing Expedition |QID|9669|QO|1;2|M|21.81,36.49|Z|1950;Bloodmyst Isle|N|Kill spiders on the way.
C The Missing Expedition |QID|9669|QO|3|M|17.78,38.06|Z|1950;Bloodmyst Isle|N|Kill Zarakh.|T|Zarakh|
C They're Alive! Maybe...|QID|9670|M|22,36|Z|1950;Bloodmyst Isle|N|{coords}Attack the Webbed Creatures. You may free a Researcher, or you may get a hostile mob.|US|
T They're Alive! Maybe...|QID|9670|M|24.9,34.3|Z|1950;Bloodmyst Isle|N|{coords}To Researcher Cornelius.|
C Fouled Water Spirits|QID|10067|M|28.92,36.47|Z|1950;Bloodmyst Isle|N|Kill 6 Fouled Water Spirits.|US|
T Cutting a Path|QID|10065|M|30.28,45.88|Z|1950;Bloodmyst Isle|N|To Scout Joril.|
T Fouled Water Spirits|QID|10067|M|30.74,46.83|Z|1950;Bloodmyst Isle|N|To Vindicator Corin.|
T Oh, the Tangled Webs They Weave|QID|10066|M|30.74,46.83|Z|1950;Bloodmyst Isle|N|To Vindicator Corin.|
H Blood Watch|QID|9711|M|55.04,59.33|Z|1950;Bloodmyst Isle|N|Hearth or run back to Blood Watch.|
T Matis the Cruel|QID|9711|M|55.61,55.14|Z|1950;Bloodmyst Isle|N|To Vindicator Kuros.|
T Limits of Physical Exhaustion|QID|9746|M|55.56,55.37|Z|1950;Bloodmyst Isle|N|To Vindicator Aesom.|
A The Sun Gate|QID|9740|PRE|9746|M|55.56,55.37|Z|1950;Bloodmyst Isle|N|From Vindicator Aesom.| ; Non-Draenei
T Critters of the Void|QID|9741|M|55.56,55.37|Z|1950;Bloodmyst Isle|N|To Vindicator Aesom.|
T The Missing Expedition|QID|9669|M|53.25,57.02|Z|1950;Bloodmyst Isle|N|To Achelus.|
N Go train your skills |QID|9671|N|Train skills, then restock on food/water, etc.|
A Urgent Delivery|QID|9671|PRE|9506|M|PLAYER|Z|1950;Bloodmyst Isle|N|From Messenger Hermesius, who walks all over Blood Watch.| ; Non-Draenei
;At the time of this run through, the quest is bugged on BCC. The mail doesnt have a quest item in it.
N Check your mailbox|QID|9561|M|55.18,59.19|Z|1950;Bloodmyst Isle|L|24132|N|Urgent Delivery results in a mail sent to your mailbox. Close this when mail obtained.|
A The Bloodcurse Legacy|QID|9672^9751|PRE|9671|N|From A Letter from the Admiral.|U|24132| ; Non-Draenei
A Ysera's Tears|QID|9649|PRE|9648|M|56.42,56.82|Z|1950;Bloodmyst Isle|N|From Maatparm.| ; Non-Draenei
T Nolkai's Words|QID|9561|M|61.11,49.62|Z|1950;Bloodmyst Isle|N|It's a pile of dirt.|
A Restoring Sanctity|QID|9687|M|74.46,33.66|Z|1950;Bloodmyst Isle|N|From Prince Toreth. He pats around the area.| ; Non-Draenei
T The Bloodcurse Legacy|QID|9672^9751|M|79.14,22.66|Z|1950;Bloodmyst Isle|N|To Captain Edward Hanes.|
A The Bloodcursed Naga|QID|9674|PRE|9672^9751|M|79.14,22.66|Z|1950;Bloodmyst Isle|N|From Captain Edward Hanes.| ; Non-Draenei
C The Bloodcursed Naga|QID|9674|M|81.33,21.06|Z|1950;Bloodmyst Isle|N|Head into the water and kill Naga.|
T The Bloodcursed Naga|QID|9674|M|79.14,22.66|Z|1950;Bloodmyst Isle|N|To Captain Edward Hanes.|
A The Hopeless Ones...|QID|9682|PRE|9674|M|79.14,22.66|Z|1950;Bloodmyst Isle|N|From Captain Edward Hanes.| ; Non-Draenei
C The Hopeless Ones...|QID|9682|M|83,22;87.2,18.5|CN|Z|1950;Bloodmyst Isle|N|{coords}Kill and loot Bloodcursed Voyagers in and around the submerged ships, until you have 4 Bloodcursed Souls.|
N The Captain's Kiss Buff|QID|9682|M|79,22|Z|1950;Bloodmyst Isle|N|{coords}The swim speed and water breathing buff is really useful for another quest. Go back to Captain Edward Hanes, but don't turn in the quest. Ask him to renew the buff on you.|
C Ysera's Tears|QID|9649|M|74.55,13.69|Z|1950;Bloodmyst Isle|N|Loot the green glowing mushrooms from the ground.|S|
C Restoring Sanctity|QID|9687|M|60.05,35.47;58.09,29.47|CN|Z|1950;Bloodmyst Isle|N|Loot the bones. They are around where the small Wildkin camps are.|
T Restoring Sanctity|QID|9687|M|73.75,33.73|Z|1950;Bloodmyst Isle|N|To Prince Toreth.|
A Into the Dream|QID|9688|PRE|9687|M|73.75,33.73|Z|1950;Bloodmyst Isle|N|From Prince Toreth.| ; Non-Draenei
C Into the Dream|QID|9688|M|72.6,27.78|Z|1950;Bloodmyst Isle|N|Kill Veridian Whelps and Broodlings. They are all over the island.|
T Into the Dream|QID|9688|M|73.75,33.73|Z|1950;Bloodmyst Isle|N|To Prince Toreth.|
A Razormaw|QID|9689|PRE|9688|M|73.75,33.73|Z|1950;Bloodmyst Isle|N|From Prince Toreth.|LVL|19| ; Non-Draenei
C Razormaw|QID|9689|M|72,20|Z|1950;Bloodmyst Isle|N|{coords}Move to the top of the hill. Clear the whelplings, and get ready for a fight.|U|24221|
C Ysera's Tears|QID|9649|M|74.55,13.69|Z|1950;Bloodmyst Isle|N|Loot the green glowing mushrooms from the ground.|US|
T The Hopeless Ones...|QID|9682|M|79.14,22.66|Z|1950;Bloodmyst Isle|N|To Captain Edward Hanes. Before turning in, refresh your buff again.|
A Ending the Bloodcurse|QID|9683|PRE|9682|M|79.14,22.66|Z|1950;Bloodmyst Isle|N|From Captain Edward Hanes.| ; Non-Draenei
T Razormaw|QID|9689|M|73.7,33.7|Z|1950;Bloodmyst Isle|N|{coords}To Prince Toreth.|
C Ending the Bloodcurse|QID|9683|M|85,54|Z|1950;Bloodmyst Isle|N|{coords}Clear the top of the hill, then click the statue, and kill Atoph the Bloodcursed|
T Ending the Bloodcurse|QID|9683|M|79.14,22.66|Z|1950;Bloodmyst Isle|N|To Captain Edward Hanes.|
H Blood Watch|QID|9649|M|55.04,59.33|Z|1950;Bloodmyst Isle|N|Hearth or run back to Blood Watch.|
T Ysera's Tears|QID|9649|M|56.42,56.82|Z|1950;Bloodmyst Isle|N|To Maatparm.|
r Repair/Restock |QID|9740|M|53.32,56.67|Z|1950;Bloodmyst Isle|N|Repair/Sell Junk at Beega.NOTECONT|
N Non-Draenei races|QID|9740|N|Non-Draenei have only one more available quest on bloodmyst. Decide if you are interested, if not, just follow the next guide.|R|-Draenei|
;F The Exodar|QID|9740|M|57.68,53.89|Z|1950;Bloodmyst Isle|N|Fly to The Exodar to train your riding skill. Skip this step if you already have it.|R|Draenei|
;N Get your Mount|QID|9740|N|Up the ramp and to the left is the riding trainer. You'll need 4 gold for training and 1 gold for the mount. Skip if you already have it. Click to close and continue.|R|Draenei|
F Blood Watch|QID|9740|M|54.46,36.4|Z|The Exodar|N|Fly back to Blood Watch. Skip if you're already there.|R|Draenei|
A Clearing the Way|QID|9761|PRE|9760|M|30.75,46.80|Z|1950;Bloodmyst Isle|N|From Vindicator Corin.|LVL|18|
A Ending Their World|QID|9759|PRE|9753|M|30.75,46.80|Z|1950;Bloodmyst Isle|N|From Demolitionist Legoso.|
C Clearing the Way|QID|9761|M|19.8,52.6|Z|1950;Bloodmyst Isle|N|{coords}Kill Sunhawk Agents and Saboteurs. Let the Legoso do most of the work. Make sure you do 50%+ dmg to the quest mobs, so you get credit.|S|
C Ending Their World|QID|9759|M|19,52|Z|1950;Bloodmyst Isle|N|{coords}Follow Legoso, he will stop in 2 places to plant explosives. Then you will have to kill Sironas.|
C Clearing the Way|QID|9761|M|19.8,52.6|Z|1950;Bloodmyst Isle|N|{coords}Finish killing Sunhawk Agents and Saboteurs.|US|
C The Sun Gate|QID|9740|M|18.95,63.5|Z|1950;Bloodmyst Isle|N|Go to the Sun Gate. Right click the 4 portal controllers, then right click the Sun Gate.|
T Clearing the Way|QID|9761|M|30.75,46.80|Z|1950;Bloodmyst Isle|N|To Vindicator Corin.|
H Blood Watch|QID|9740|M|55.04,59.33|Z|1950;Bloodmyst Isle|N|Hearth or run back to Blood Watch.|
T The Sun Gate|QID|9740|M|55.54,55.42|Z|1950;Bloodmyst Isle|N|To Vindicator Aesom.|
T Ending Their World|QID|9759|M|52.70,53.24|Z|1950;Bloodmyst Isle|N|This is one of the best quest turn-ins in WoW. Get ready to enjoy a bit of a show. Turn the quest into Exarch Admetius.|
A The Unwritten Prophecy|QID|9762|PRE|9759|M|54.02,55.47|Z|1950;Bloodmyst Isle|N|From Prophet Velen. If Prophet Velen despawns before you accept the quest, go to The Exodar to get the quest.|R|Draenei|
A Newfound Allies|QID|9632|M|54.69,54.01|Z|1950;Bloodmyst Isle|N|From Anchorite Paetheus.| ; Non-Draenei
F The Exodar|QID|9632|M|57.68,53.89|Z|1950;Bloodmyst Isle|N|Fly to The Exodar.|
;A Hero's Call: Ashenvale!|QID|28492|LEAD|13594|M|55.31,47.38|Z|The Exodar|N|From the Hero's Call Board. Will not show up if your level is too high.| ; Non-Draenei
A The Way to Auberdine|QID|9633|M|24.18,54.33|Z|Azuremyst Isle|N|From Huntress Kella Nightbow.| ; Non-Draenei
b Darkshore|AVAILABLE|65|M|20.10,54.15|Z|Azuremyst Isle|N|Take the boat at the end of the docks to Auberdine|
T The Way to Auberdine|QID|9633|M|37.40,40.15|Z|Darkshore|N|To Thundris Windweaver.|
b Wetlands|AVAILABLE|65|M|32.42,43.74|Z|Darkshore|N|Get on the boat to Menethil Harbor (read the sign post).|
f Menethil Harbor|AVAILABLE|65|M|9.48,59.68|Z|Wetlands|N|Grab the flightpath.|TAXI|-Menethil Harbor|
N Heading to Stormwind|AVAILABLE|65|N|From here we need to get to Ironforge and on to Stormwind City to grab the FPs for the other major cities and turn in a quest (if you found the book). You can follow the next steps to get there relatively quickly.|TAXI|-Ironforge|
R Dun Morogh|AVAILABLE|65|M|32.0,6.4;17.7,16.4|CS|Z|Dun Morogh|N|{coords}Wait for the boat to set off, when it comes alongside land jump off and swim to shore.\nRun west along the coast until you arrive at the small bay visible on the Dun Morogh map.\nHead towards the shore in the bay until you see your zone change to Dun Morogh.|TAXI|-Ironforge|
R Kharanos|AVAILABLE|65|M|17.9,17|CN|Z|Dun Morogh|N|{coords}Head into the water and whilst ensuring you are still in the Dun Morogh zone drown yourself|TAXI|-Ironforge|
R Ironforge|AVAILABLE|65|M|47.40,41.80;54.2,34.40|CS|Z|Dun Morogh|N|Head out of Kharanos and up the hill towards Ironforge (you do not need to resurrect at the Spirit Healer)|TAXI|-Ironforge|
R Deeprun Tram|AVAILABLE|65|M|78.20,52.00|Z|Ironforge|N|Take a right once inside Ironforge and zone into the Deeprun Tram to resurrect yourself|TAXI|-Ironforge|
f Ironforge|AVAILABLE|65|M|55.49,47.72|Z|Ironforge|N|run back into Ironforge and grab the flightpath from Gryth Thurden.|TAXI|-Ironforge|
= Train|AVAILABLE|125|M|69.89,82.96|Z|Ironforge|N|Visit your class trainer before you leave.|C|Hunter|
= Train|AVAILABLE|125|M|26.51,11.02|Z|Ironforge|N|Visit your class trainer before you leave.|C|Mage|
= Train|AVAILABLE|125|M|26.51,11.02|Z|Ironforge|N|Visit your class trainer before you leave.|C|Paladin|
= Train|AVAILABLE|125|M|26.51,11.02|Z|Ironforge|N|Visit your class trainer before you leave.|C|Priest|
= Train|AVAILABLE|125|M|67.96,85.97|Z|Ironforge|N|Visit your class trainer before you leave.|C|Warrior|
= Train|AVAILABLE|125|M|54.83,29.12|Z|Ironforge|N|Visit your class trainer before you leave.|C|Shaman|
R Deeprun Tram|AVAILABLE|65|M|76.83,51.28|Z|Ironforge|N|Go to Tinker Town and zone into the Deeprun Tram.|
R Stormwind City|AVAILABLE|65|N|Take the tram ride and then run into Stormwind.|
f Stormwind|AVAILABLE|343|M|66.28,62.12|Z|Stormwind City|N|Discover Stormwind Flightpoint with Dungar Longdrink.|TAXI|-Stormwind|
h Stormwind City|QID|272|N|Head to the Innkeeper in the trade district and set your hearthstone|C|Druid|
]]
end)
