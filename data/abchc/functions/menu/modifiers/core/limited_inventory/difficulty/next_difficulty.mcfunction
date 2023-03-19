#> abchc:menu/limited_inventory/difficulty/next_difficulty
# Go to the next difficulty for limited_inventory
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/limited_inventory/**
# @context player

#> Click sound
function abchc:menu/actions/click

#> If difficulty isn't set, get from global
execute unless score difficulty.limited_inventory abch.config matches 0..3 run scoreboard players operation difficulty.limited_inventory abch.config = difficulty.global abch.config

#> Set difficulty to temp score
scoreboard players operation #temp abch.config = difficulty.limited_inventory abch.config

#> Add temp score
scoreboard players add #temp abch.config 1

#> If it goes above 3, set to 0 (Hard to Peaceful)
execute if score #temp abch.config matches 4.. run scoreboard players set #temp abch.config 0

#> Set new difficulty temp score to difficulty
scoreboard players operation difficulty.limited_inventory abch.config = #temp abch.config

#> Update menu
function abchc:menu/modifiers/core/limited_inventory/config