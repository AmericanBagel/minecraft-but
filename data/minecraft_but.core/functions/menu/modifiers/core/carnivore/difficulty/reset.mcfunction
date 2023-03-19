#> minecraft_but.coreraft_but.core:menu/modifiers/core/carnivore/difficulty/reset
# Reset carnivore difficulty to global difficulty
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.coreraft_but.core:menu/modifiers/core/carnivore/**
# @context player

#> Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

#> Reset to global difficulty
scoreboard players operation difficulty.carnivore minecraft_but.config = difficulty.global minecraft_but.config

#> Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/carnivore/config