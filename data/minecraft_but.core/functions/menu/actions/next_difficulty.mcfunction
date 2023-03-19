#> minecraft_but.core:menu/actions/next_difficulty
# Go to the next difficulty
# @within minecraft_but.core:menu/**
# @context menu player

#> Click sound
function minecraft_but.core:menu/actions/click

#> If there is no custom difficulty value, get from default
execute unless score difficulty.global minecraft_but.custom matches -2147483648..2147483647 run scoreboard players operation difficulty.global minecraft_but.custom = difficulty.global minecraft_but.default


#> Set difficulty to temp score
scoreboard players operation #temp minecraft_but.config = difficulty.global minecraft_but.custom

#> Increase temp score
scoreboard players add #temp minecraft_but.config 1

#> If it goes above 4, reset to 1 (Hard to Peaceful)
execute if score #temp minecraft_but.config matches 4.. run scoreboard players set #temp minecraft_but.config 0

#> Set new difficulty temp score to difficulty
scoreboard players operation difficulty.global minecraft_but.custom = #temp minecraft_but.config

#> Set custom difficulty score to global difficulty
scoreboard players operation difficulty.global minecraft_but.config = difficulty.global minecraft_but.custom

#> Update page
function minecraft_but.core:menu/find_page