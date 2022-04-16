#> abchc:menu/modifiers/core/random/mode/5down
# Increase random config score mode by 5
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/random/**
# @context player

#> Remove 5 from score
scoreboard players remove random.mode abch.config 5

#> If number outside range, reset score
# If below minimum, set to max
execute if score random.mode abch.config < #random.mode_min abch.default run scoreboard players operation random.mode abch.config = #random.mode_max abch.default
# If above maximum, set to min
execute if score random.mode abch.config > #random.mode_max abch.default run scoreboard players operation random.mode abch.config = #random.mode_min abch.default

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/random/config