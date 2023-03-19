#> minecraft_but.core:menu/modifiers/core/chunk_error/chance/1down
# Increase chunk_error config score chance by 1
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/chunk_error/**
# @context player

#> Remove 1 from score
scoreboard players remove chunk_error.chance minecraft_but.config 1

#> If number outside range, reset score
# If below minimum, set to max
execute if score chunk_error.chance minecraft_but.config < #chunk_error.chance_min minecraft_but.default run scoreboard players operation chunk_error.chance minecraft_but.config = #chunk_error.chance_max minecraft_but.default
# If above maximum, set to min
execute if score chunk_error.chance minecraft_but.config > #chunk_error.chance_max minecraft_but.default run scoreboard players operation chunk_error.chance minecraft_but.config = #chunk_error.chance_min minecraft_but.default

#> Click sound
function minecraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.core:menu/modifiers/core/chunk_error/config