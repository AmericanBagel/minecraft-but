#> minecraft_but.coreraft_but.core:menu/modifiers/core/ender_blood/radius/reset
# Reset ender_blood config score radius to default
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.coreraft_but.core:menu/modifiers/core/ender_blood/**
# @context player

#> Reset
# If default was set, set score to default
execute if score ender_blood.radius minecraft_but.default matches -2147483648..2147483647 run scoreboard players operation ender_blood.radius minecraft_but.config = ender_blood.radius minecraft_but.default
# If default wasn't set, set score to 1
execute unless score ender_blood.radius minecraft_but.default matches -2147483648..2147483647 run scoreboard players set ender_blood.radius minecraft_but.config 1

#> Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/ender_blood/config