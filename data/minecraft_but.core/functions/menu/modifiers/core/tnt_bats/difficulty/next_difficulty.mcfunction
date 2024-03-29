#> minecraft_but.core:menu/tnt_bats/difficulty/next_difficulty
# Go to the next difficulty for tnt_bats
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/tnt_bats/**
# @context player

#> Click sound
function minecraft_but.core:menu/actions/click

#> If difficulty isn't set, get from global
execute unless score difficulty.tnt_bats minecraft_but.config matches 0..3 run scoreboard players operation difficulty.tnt_bats minecraft_but.config = difficulty.global minecraft_but.config

#> Set difficulty to temp score
scoreboard players operation #temp minecraft_but.config = difficulty.tnt_bats minecraft_but.config

#> Add temp score
scoreboard players add #temp minecraft_but.config 1

#> If it goes above 3, set to 0 (Hard to Peaceful)
execute if score #temp minecraft_but.config matches 4.. run scoreboard players set #temp minecraft_but.config 0

#> Set new difficulty temp score to difficulty
scoreboard players operation difficulty.tnt_bats minecraft_but.config = #temp minecraft_but.config

#> Update menu
function minecraft_but.core:menu/modifiers/core/tnt_bats/config