#> minecraft_but.coreraft_but.core:menu/modifiers/core/deadly_colors/interval/reset
# Reset deadly_colors config score interval to default
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.coreraft_but.core:menu/modifiers/core/deadly_colors/**
# @context player

#> Reset
# If default was set, set score to default
execute if score deadly_colors.interval minecraft_but.default matches -2147483648..2147483647 run scoreboard players operation deadly_colors.interval minecraft_but.config = deadly_colors.interval minecraft_but.default
# If default wasn't set, set score to 1
execute unless score deadly_colors.interval minecraft_but.default matches -2147483648..2147483647 run scoreboard players set deadly_colors.interval minecraft_but.config 1

#> Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/deadly_colors/config