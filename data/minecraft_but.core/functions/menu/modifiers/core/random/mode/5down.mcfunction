#> minecraft_but.core:menu/modifiers/core/random/mode/5down
# Increase random config score mode by 5
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/random/**
# @context player

#> Remove 5 from score
scoreboard players remove random.mode minecraft_but.config 5

#> If number outside range, reset score
# If below minimum, set to max
execute if score random.mode minecraft_but.config < #random.mode_min minecraft_but.default run scoreboard players operation random.mode minecraft_but.config = #random.mode_max minecraft_but.default
# If above maximum, set to min
execute if score random.mode minecraft_but.config > #random.mode_max minecraft_but.default run scoreboard players operation random.mode minecraft_but.config = #random.mode_min minecraft_but.default

#> Click sound
function minecraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.core:menu/modifiers/core/random/config