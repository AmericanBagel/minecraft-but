#> minecraft_but.core:menu/modifiers/core/chunk_error/min_spread/5up
# Increase chunk_error config score min_spread by 5
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/chunk_error/**
# @context player

#> Add 5 to score
scoreboard players add chunk_error.min_spread minecraft_but.config 5

#> If number outside range, reset score
# If below minimum, set to max
execute if score chunk_error.min_spread minecraft_but.config < #chunk_error.min_spread_min minecraft_but.default run scoreboard players operation chunk_error.min_spread minecraft_but.config = #chunk_error.min_spread_max minecraft_but.default
# If above maximum, set to min
execute if score chunk_error.min_spread minecraft_but.config > #chunk_error.min_spread_max minecraft_but.default run scoreboard players operation chunk_error.min_spread minecraft_but.config = #chunk_error.min_spread_min minecraft_but.default

#> Click sound
function minecraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.core:menu/modifiers/core/chunk_error/config