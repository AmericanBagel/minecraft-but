#> minecraft_but.coreraft_but.core:menu/modifiers/core/lightning_storm/times/reset
# Reset lightning_storm config score times to default
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.coreraft_but.core:menu/modifiers/core/lightning_storm/**
# @context player

#> Reset
# If default was set, set score to default
execute if score lightning_storm.times minecraft_but.default matches -2147483648..2147483647 run scoreboard players operation lightning_storm.times minecraft_but.config = lightning_storm.times minecraft_but.default
# If default wasn't set, set score to 1
execute unless score lightning_storm.times minecraft_but.default matches -2147483648..2147483647 run scoreboard players set lightning_storm.times minecraft_but.config 1

#> Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/lightning_storm/config