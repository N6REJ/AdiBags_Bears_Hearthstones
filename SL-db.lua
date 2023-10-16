-- AdiBags Bears Hearthstones - Database
-- Created by @project-author@ character is Bearesquishy - dalaran please credit whenever.
-- Source on GitHub: https://n6rej.github.io
---@type
---
local addonName, addonTable = ...;

-- Get the common name for expansion
local E = addonTable.expansion;
local Expansion = E["Shadowlands"]

-- Create addon table
local db = {}

db.name = "Bears Hearthstones"
db.desc = "Hearthstones and other transportation items"

-- Filter info
db.Filters = {
   ["Hearthstones"] = {
      uiName = db.name,
      uiDesc = db.desc,
      title = "Hearthstones",
      items = {
         -- ID,	--Item name
         [128353] = true, -- Admiral's Compass
         [140192] = true, -- Dalaran Hearthstone
         [37863] = true,    -- Direbrew's Remote
         [110560] = true, -- Garrison Hearthstone
         [6948] = true, -- Hearthstone
         [52251] = true, -- Jaina's Locket
         [118663] = true, -- Relic of Karabor
         [29796] = true,    -- Socrethar's Teleportation Stone
         [64457] = true, -- The Last Relic of Argus
         [118662] = true, -- Bladespire Relic
         [132517] = true, -- Intra-Dalaran Wormhole Generator
         [140493] = true, -- Adept's Guide to Dimensional Rifting
         [128502] = true,    -- Hunter's Seeking Crystal
         [128503] = true, -- Master Hunter's Seeking Crystal
         [132523] = true, -- Reaves Battery
         [144341] = true, -- Rechargeable Reaves Battery
         [138448] = true, -- Emblem of Margoss
         [141605] = true,    -- Flight Master's Whistle
         [168862] = true, -- G.E.A.R. Tracking Beacon
         [159224] = true, -- Zuldazar Hearthstone
         [180817] = true, -- Cypher of Relocation (Ve'nari's Refuge)
         [184504] = true, -- Attendant's Pocket Portal: Oribos
         [184501] = true,    -- Attendant's Pocket Portal: Revendreth
         [184503] = true, -- Attendant's Pocket Portal: Ardenweald
         [184502] = true, -- Attendant's Pocket Portal: Maldraxxus
         [184500] = true, -- Attendant's Pocket Portal: Bastion
         [46874] = true, -- Argent Crusader's Tabard
         [63379] = true,    -- Baradin's Wardens Tabard
         [63378] = true, -- Hellscream's Reach Tabard
         [22632] = true, -- Atiesh, Greatstaff of the Guardian (Druid)
         [22589] = true, -- Atiesh, Greatstaff of the Guardian (Mage)
         [22631] = true, -- Atiesh, Greatstaff of the Guardian (Priest)
         [22630] = true,    -- Atiesh, Greatstaff of the Guardian (Warlock)
         [50287] = true, -- Boots of the Bay
         [65274] = true, -- Cloak of Coordination: Orgrimmar
         [65360] = true, -- Cloak of Coordination: Stormwind
         [28585] = true, -- Ruby Slippers
         [63353] = true,    -- Shroud of Cooperation: Orgrimmar
         [63352] = true, -- Shroud of Cooperation: Stormwind
         [63207] = true, -- Wrap of Unity: Orgrimmar
         [63206] = true, -- Wrap of Unity: Stormwind
         [169064] = true, -- Montebank's Colorful Cloak
         [142298] = true,    -- Astonishingly Scarlet Slippers
         [17690] = true, -- Frostwolf Insignia Rank 1
         [17905] = true, -- Frostwolf Insignia Rank 2
         [17906] = true, -- Frostwolf Insignia Rank 3
         [17907] = true, -- Frostwolf Insignia Rank 4
         [17908] = true,    -- Frostwolf Insignia Rank 5
         [17909] = true, -- Frostwolf Insignia Rank 6
         [17691] = true, -- Stormpike Insignia Rank 1
         [17900] = true, -- Stormpike Insignia Rank 2
         [17901] = true, -- Stormpike Insignia Rank 3
         [17902] = true,    -- Stormpike Insignia Rank 4
         [17903] = true, -- Stormpike Insignia Rank 5
         [17904] = true, -- Stormpike Insignia Rank 6
         [32757] = true, -- Blessed Medallion of Karabor
         [40586] = true, -- Band of the Kirin Tor
         [45688] = true,    -- Inscribed Band of the Kirin Tor
         [45689] = true, -- Inscribed Loop of the Kirin Tor
         [45690] = true, -- Inscribed Ring of the Kirin Tor
         [139599] = true, -- Empowered Ring of the Kirin Tor
         [48956] = true, -- Etched Ring of the Kirin Tor
         [44935] = true,    -- Ring of the Kirin Tor
         [51559] = true, -- Runed Ring of the Kirin Tor
         [51560] = true, -- Runed Band of the Kirin Tor
         [51557] = true, -- Runed Signet of the Kirin Tor
         [45691] = true, -- Inscribed Signet of the Kirin Tor
         [40585] = true,    -- Signet of the Kirin Tor
         [48957] = true, -- Etched Signet of the Kirin Tor
         [44934] = true, -- Loop of the Kirin Tor
         [51558] = true, -- Runed Loop of the Kirin Tor
         [45689] = true, -- Inscribed Loop of the Kirin Tor
         [48955] = true,    -- Etched Loop of the Kirin Tor
         [48954] = true, -- Etched Band of the Kirin Tor
         [118907] = true, -- Pit Fighter's Punching Ring (Bizmo's Brawlpub)
         [95051] = true, -- The Brassiest Knuckle (Bizmo's Brawlpub)
         [118908] = true, -- Pit Fighter's Punching Ring (Brawl'gar Arena)
         [95050] = true,    -- The Brassiest Knuckle (Brawl'gar Arena)
         [103678] = true, -- Time-Lost Artifact
         [144391] = true, -- Pugilist's Powerful Punching Ring (Alliance)
         [144392] = true, -- Pugilist's Powerful Punching Ring (Horde)
         [142469] = true, -- Violet Seal of the Grand Magus
         [141324] = true,    -- Talisman of the Shal'dorei
         [166560] = true, -- Captain's Signet of Command
         [166559] = true, -- Commander's Signet of Battle
         [61379] = true, -- Gidwin's Hearthstone
         [68808] = true, -- Hero's Hearthstone
         [68809] = true,    -- Veteran's Hearthstone
         [92510] = true, -- Vol'jin's Hearthstone
         [132119] = true, -- Orgrimmar Portal Stone
         [132120] = true, -- Stormwind Portal Stone
         [172203] = true, -- Cracked Hearthstone
         [173537] = true,    -- Glowing Hearthstone
         [173373] = true, -- Faol's Hearthstone
         [173528] = true, -- Gilded Hearthstone
         [173716] = true, -- Mossy Hearthstone
         [35230] = true, -- Darnarian's Scroll of Teleportation
         [48248] = true,    -- Scroll of Recall
         [60336] = true, -- Scroll of Recall II
         [60337] = true, -- Scroll of Recall III
         [119183] = true, -- Scroll of Risky Recall
         [139590] = true, -- Scroll of Teleport: Ravenholdt
         [58487] = true,    -- Potion of Deepholm
         [141015] = true, -- Scroll of Town Portal: Kal'delar
         [141014] = true, -- Scroll of Town Portal: Sashj'tar
         [141017] = true, -- Scroll of Town Portal: Lian'tril
         [141016] = true, -- Scroll of Town Portal: Faronaar
         [141013] = true,    -- Scroll of Town Portal: Shala'nir
         [142543] = true, -- Scroll of Town Portal (Diablo 3 event)
         [150733] = true, -- Scroll of Town Portal (Ar'gorok in Arathi)
         [160219] = true, -- Scroll of Town Portal (Stromgarde in Arathi)
         [163694] = true, -- Scroll of Luxurious Recall
         [173430] = true,    -- Nexus Teleport Scroll
         [181163] = true, -- Scroll of Teleport: Theater of Pain
         [93672] = true, -- Dark Portal
         [36954] = true, -- Dimensional Ripper - Area 52
         [23486] = true, -- Dimensional Ripper - Everlook
         [54452] = true,    -- Ethereal Portal
         [64488] = true, -- Innkeeper's Daughter
         [95567] = true, -- Kirin Tor Beacon
         [95568] = true, -- Sunreaver Beacon
         [43824] = true, -- The Schools of Arcane Magic - Mastery
         [23489] = true,    -- Ultrasafe Transporter - Gadgetzan
         [36955] = true, -- Ultrasafe Transporter - Toshley's Station
         [167075] = true, -- Ultrasafe Transporter: Mechagon
         [112059] = true, -- Wormhole Centrifuge
         [151652] = true, -- Wormhole Generator: Argus
         [48933] = true,    -- Wormhole Generator: Northrend
         [87215] = true, -- Wormhole Generator: Pandaria
         [172924] = true, -- Wormhole Generator: Shadowlands
         [142542] = true, -- Tome of Town Portal (Diablo 3 event)
         [168807] = true, -- Wormhole Generator: Kul Tiras
         [168808] = true,    -- Wormhole Generator: Zandalar
         [166746] = true, -- Fire Eater's Hearthstone
         [166747] = true, -- Brewfest Reveler's Hearthstone
         [162973] = true, -- Greatfather Winter's Hearthstone
         [163045] = true, -- Headless Horseman's Hearthstone
         [168907] = true,    -- Holographic Digitalization Hearthstone
         [165669] = true, -- Lunar Elder's Hearthstone
         [165802] = true, -- Noble Gardener's Hearthstone
         [165670] = true, -- Peddlefeet's Lovely Hearthstone
         [182773] = true, -- Necrolord's Hearthstone
         [184353] = true,    -- Kyrian Hearthstone
         [183716] = true, -- Venthyr Sinstone
         [180290] = true, -- Night Fae Hearthstone
         [169297] = true, -- Stormpike Insignia
         [40582] = true, -- Scourgestone
      }
   }
}

-- now that db is populated lets pass it on.
addonTable.Shadowlands = db
