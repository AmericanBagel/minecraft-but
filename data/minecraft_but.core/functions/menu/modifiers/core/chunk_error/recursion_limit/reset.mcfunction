#> minecraft_but.core:menu/modifiers/core/chunk_error/recursion_limit/reset
# Reset chunk_error config score recursion_limit to default
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/chunk_error/**
# @context player

#> Reset
# If default was set, set score to default
execute if score chunk_error.recursion_limit minecraft_but.default matches -2147483648..2147483647 run scoreboard players operation chunk_error.recursion_limit minecraft_but.config = chunk_error.recursion_limit minecraft_but.default
# If default wasn't set, set score to 1
execute unless score chunk_error.recursion_limit minecraft_but.default matches -2147483648..2147483647 run scoreboard players set chunk_error.recursion_limit minecraft_but.config 1

#> Click sound
function minecraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.core:menu/modifiers/core/chunk_error/config