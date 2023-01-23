#> minecraft_but.core:menu/modifiers/core/explosive_snowballs/radius/1down
# Decrease explosive_snowballs config score radius by 1
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/explosive_snowballs/**
# @context player

#> Remove 1 from score
scoreboard players remove explosive_snowballs.radius minecraft_but.config 1

#> Click sound
function minecraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.core:menu/modifiers/core/explosive_snowballs/config