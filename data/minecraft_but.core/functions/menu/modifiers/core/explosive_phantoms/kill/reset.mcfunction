#> minecraft_but.core:menu/modifiers/core/explosive_phantoms/kill/reset
# Reset explosive_phantoms config score kill to default
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/explosive_phantoms/**
# @context player

#> Reset
# If default was set, set score to default
execute if score explosive_phantoms.kill minecraft_but.default matches -2147483648..2147483647 run scoreboard players operation explosive_phantoms.kill minecraft_but.config = explosive_phantoms.kill minecraft_but.default
# If default wasn't set, set score to 0
execute unless score explosive_phantoms.kill minecraft_but.default matches -2147483648..2147483647 run scoreboard players set explosive_phantoms.kill minecraft_but.config 0

#> Click sound
function minecraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.core:menu/modifiers/core/explosive_phantoms/config