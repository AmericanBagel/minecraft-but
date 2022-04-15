#> abchc:menu/modifiers/core/explosive_snowballs/radius/reset
# Reset explosive_snowballs config score radius to default
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/explosive_snowballs/**
# @context player

#> Reset
# If default was set, set score to default
execute if score explosive_snowballs.radius abch.default matches -2147483648..2147483647 run scoreboard players operation explosive_snowballs.radius abch.config = explosive_snowballs.radius abch.default
# If default wasn't set, set score to 1
execute unless score explosive_snowballs.radius abch.default matches -2147483648..2147483647 run scoreboard players set explosive_snowballs.radius abch.config 1

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/explosive_snowballs/config