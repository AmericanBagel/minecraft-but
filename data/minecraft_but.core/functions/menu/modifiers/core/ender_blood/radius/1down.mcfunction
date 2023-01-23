#> minecraft_but.core:menu/modifiers/core/ender_blood/radius/1down
# Increase ender_blood config score radius by 1
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/ender_blood/**
# @context player

#> Remove 1 from score
scoreboard players remove ender_blood.radius minecraft_but.config 1

#> If number outside range, reset score
# If below minimum, set to max
execute if score ender_blood.radius minecraft_but.config < #ender_blood.radius_min minecraft_but.default run scoreboard players operation ender_blood.radius minecraft_but.config = #ender_blood.radius_max minecraft_but.default
# If above maximum, set to min
execute if score ender_blood.radius minecraft_but.config > #ender_blood.radius_max minecraft_but.default run scoreboard players operation ender_blood.radius minecraft_but.config = #ender_blood.radius_min minecraft_but.default

#> Click sound
function minecraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.core:menu/modifiers/core/ender_blood/config