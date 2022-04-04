#> abchc:menu/deadly_colors/difficulty/previous_difficulty
# Go to the previous difficulty for deadly_colors
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/deadly_colors/**
# @context player

#> Click sound
function abchc:menu/actions/click

#> If difficulty isn't set, get from global
execute unless score difficulty.deadly_colors abch.config matches 0..3 run scoreboard players operation difficulty.deadly_colors abch.config = difficulty.global abch.config

#> Set difficulty to temp score
scoreboard players operation #temp abch.config = difficulty.deadly_colors abch.config

#> Decrease temp score
scoreboard players remove #temp abch.config 1

#> If it goes below 0, set to 3 (Peaceful to Hard)
execute if score #temp abch.config matches ..-1 run scoreboard players set #temp abch.config 3

#> Set new difficulty temp score to difficulty
scoreboard players operation difficulty.deadly_colors abch.config = #temp abch.config

#> Update menu
function abchc:menu/modifiers/core/deadly_colors/config