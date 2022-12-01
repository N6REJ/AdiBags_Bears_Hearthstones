-- AdiBags Bears Hearthstones - Database
-- Created by @project-author@ character is Bearesquishy - dalaran please credit whenever.
-- Source on GitHub: https://n6rej.github.io
---@type
---
local addonName, addonTable = ...

-- Get the common name for expansion
local E = addonTable.expansion
local Expansion = E["Dragonflight"]

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
         [173523] = true -- Tirisfal Camp Scroll
      }
   }
}

-- now that db is populated lets pass it on.
addonTable.db = db
