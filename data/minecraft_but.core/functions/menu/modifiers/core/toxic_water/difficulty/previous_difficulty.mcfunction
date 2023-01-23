#> minecraft_but.core:menu/toxic_water/difficulty/previous_difficulty
# Go to the previous difficulty for toxic_water
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/toxic_water/**
# @context player

#> Click sound
function minecraft_but.core:menu/actions/click

#> If difficulty isn't set, get from global
execute unless score difficulty.toxic_water minecraft_but.config matches 0..3 run scoreboard players operation difficulty.toxic_water minecraft_but.config = difficulty.global minecraft_but.config

#> Set difficulty to temp score
scoreboard players operation #temp minecraft_but.config = difficulty.toxic_water minecraft_but.config

#> Decrease temp score
scoreboard players remove #temp minecraft_but.config 1

#> If it goes below 0, set to 3 (Peaceful to Hard)
execute if score #temp minecraft_but.config matches ..-1 run scoreboard players set #temp minecraft_but.config 3

#> Set new difficulty temp score to difficulty
scoreboard players operation difficulty.toxic_water minecraft_but.config = #temp minecraft_but.config

#> Update menu
function minecraft_but.core:menu/modifiers/core/toxic_water/config