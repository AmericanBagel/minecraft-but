#> abchc:menu/modifiers/core/random_teleport/radius/reset
# Reset random_teleport config score radius to default
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/random_teleport/**
# @context player

#> Reset
# If default was set, set score to default
execute if score random_teleport.radius abch.default matches -2147483648..2147483647 run scoreboard players operation random_teleport.radius abch.config = random_teleport.radius abch.default
# If default wasn't set, set score to 1
execute unless score random_teleport.radius abch.default matches -2147483648..2147483647 run scoreboard players set random_teleport.radius abch.config 1

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/random_teleport/config