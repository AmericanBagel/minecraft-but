#> abchc:menu/modifiers/core/ender_blood/radius/5up
# Increase ender_blood config score radius by 5
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/ender_blood/**
# @context player

#> Add 5 to score
scoreboard players add ender_blood.radius abch.config 5

#> If number outside range, reset score
# If below minimum, set to max
execute if score ender_blood.radius abch.config < #ender_blood.radius_min abch.default run scoreboard players operation ender_blood.radius abch.config = #ender_blood.radius_max abch.default
# If above maximum, set to min
execute if score ender_blood.radius abch.config > #ender_blood.radius_max abch.default run scoreboard players operation ender_blood.radius abch.config = #ender_blood.radius_min abch.default

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/ender_blood/config