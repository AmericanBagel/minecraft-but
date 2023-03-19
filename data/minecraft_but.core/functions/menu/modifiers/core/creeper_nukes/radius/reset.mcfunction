#> minecraft_but.core:menu/modifiers/core/creeper_nukes/radius/reset
# Reset creeper_nukes config score radius to default
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/creeper_nukes/**
# @context player

#> Reset
# If default was set, set score to default
execute if score creeper_nukes.radius minecraft_but.default matches -2147483648..2147483647 run scoreboard players operation creeper_nukes.radius minecraft_but.config = creeper_nukes.radius minecraft_but.default
# If default wasn't set, set score to 1
execute unless score creeper_nukes.radius minecraft_but.default matches -2147483648..2147483647 run scoreboard players set creeper_nukes.radius minecraft_but.config 1

#> Click sound
function minecraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.core:menu/modifiers/core/creeper_nukes/config