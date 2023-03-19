#> abchc:menu/modifiers/core/explosive_eggs/radius/reset
# Reset explosive_eggs config score radius to default
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/explosive_eggs/**
# @context player

#> Reset
# If default was set, set score to default
execute if score explosive_eggs.radius abch.default matches -2147483648..2147483647 run scoreboard players operation explosive_eggs.radius abch.config = explosive_eggs.radius abch.default
# If default wasn't set, set score to 1
execute unless score explosive_eggs.radius abch.default matches -2147483648..2147483647 run scoreboard players set explosive_eggs.radius abch.config 1

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/explosive_eggs/config