#> abchc:menu/modifiers/core/fire_walker/rate/5down
# Increase fire_walker config score rate by 5
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/fire_walker/**
# @context player

#> Remove 5 from score
scoreboard players remove fire_walker.rate abch.config 5

#> If number outside range, reset score
# If below minimum, set to max
execute if score fire_walker.rate abch.config < #fire_walker.rate_min abch.default run scoreboard players operation fire_walker.rate abch.config = #fire_walker.rate_max abch.default
# If above maximum, set to min
execute if score fire_walker.rate abch.config > #fire_walker.rate_max abch.default run scoreboard players operation fire_walker.rate abch.config = #fire_walker.rate_min abch.default

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/fire_walker/config