#> minecraft_but.core:menu/modifiers/core/chunk_error/recursion_limit/5down
# Increase chunk_error config score recursion_limit by 5
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/chunk_error/**
# @context player

#> Remove 5 from score
scoreboard players remove chunk_error.recursion_limit minecraft_but.config 5

#> If number outside range, reset score
# If below minimum, set to max
execute if score chunk_error.recursion_limit minecraft_but.config < #chunk_error.recursion_limit_min minecraft_but.default run scoreboard players operation chunk_error.recursion_limit minecraft_but.config = #chunk_error.recursion_limit_max minecraft_but.default
# If above maximum, set to min
execute if score chunk_error.recursion_limit minecraft_but.config > #chunk_error.recursion_limit_max minecraft_but.default run scoreboard players operation chunk_error.recursion_limit minecraft_but.config = #chunk_error.recursion_limit_min minecraft_but.default

#> Click sound
function minecraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.core:menu/modifiers/core/chunk_error/config