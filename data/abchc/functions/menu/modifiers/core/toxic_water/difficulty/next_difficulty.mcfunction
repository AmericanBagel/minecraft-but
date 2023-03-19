#> abchc:menu/toxic_water/difficulty/next_difficulty
# Go to the next difficulty for toxic_water
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/toxic_water/**
# @context player

#> Click sound
function abchc:menu/actions/click

#> If difficulty isn't set, get from global
execute unless score difficulty.toxic_water abch.config matches 0..3 run scoreboard players operation difficulty.toxic_water abch.config = difficulty.global abch.config

#> Set difficulty to temp score
scoreboard players operation #temp abch.config = difficulty.toxic_water abch.config

#> Add temp score
scoreboard players add #temp abch.config 1

#> If it goes above 3, set to 0 (Hard to Peaceful)
execute if score #temp abch.config matches 4.. run scoreboard players set #temp abch.config 0

#> Set new difficulty temp score to difficulty
scoreboard players operation difficulty.toxic_water abch.config = #temp abch.config

#> Update menu
function abchc:menu/modifiers/core/toxic_water/config