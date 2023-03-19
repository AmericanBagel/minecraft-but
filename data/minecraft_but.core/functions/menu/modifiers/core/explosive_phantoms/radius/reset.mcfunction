#> minecraft_but.coreraft_but.core:menu/modifiers/core/explosive_phantoms/radius/reset
# Reset explosive_phantoms config score radius to default
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.coreraft_but.core:menu/modifiers/core/explosive_phantoms/**
# @context player

#> Reset
# If default was set, set score to default
execute if score explosive_phantoms.radius minecraft_but.default matches -2147483648..2147483647 run scoreboard players operation explosive_phantoms.radius minecraft_but.config = explosive_phantoms.radius minecraft_but.default
# If default wasn't set, set score to 1
execute unless score explosive_phantoms.radius minecraft_but.default matches -2147483648..2147483647 run scoreboard players set explosive_phantoms.radius minecraft_but.config 1

#> Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/explosive_phantoms/config