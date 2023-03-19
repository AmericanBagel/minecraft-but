#> minecraft_but.coreraft_but.core:menu/modifiers/core/creeper_mobs/difficulty/reset
# Reset creeper_mobs difficulty to global difficulty
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.coreraft_but.core:menu/modifiers/core/creeper_mobs/**
# @context player

#> Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

#> Reset to global difficulty
scoreboard players operation difficulty.creeper_mobs minecraft_but.config = difficulty.global minecraft_but.config

#> Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/creeper_mobs/config