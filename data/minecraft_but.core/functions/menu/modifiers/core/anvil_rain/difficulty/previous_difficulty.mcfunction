#> minecraft_but.coreraft_but.core:menu/anvil_rain/difficulty/previous_difficulty
# Go to the previous difficulty for anvil_rain
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.coreraft_but.core:menu/modifiers/core/anvil_rain/**
# @context player

#> Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

#> If difficulty isn't set, get from global
execute unless score difficulty.anvil_rain minecraft_but.config matches 0..3 run scoreboard players operation difficulty.anvil_rain minecraft_but.config = difficulty.global minecraft_but.config

#> Set difficulty to temp score
scoreboard players operation #temp minecraft_but.config = difficulty.anvil_rain minecraft_but.config

#> Decrease temp score
scoreboard players remove #temp minecraft_but.config 1

#> If it goes below 0, set to 3 (Peaceful to Hard)
execute if score #temp minecraft_but.config matches ..-1 run scoreboard players set #temp minecraft_but.config 3

#> Set new difficulty temp score to difficulty
scoreboard players operation difficulty.anvil_rain minecraft_but.config = #temp minecraft_but.config

#> Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/anvil_rain/config