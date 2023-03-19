#> abchc:menu/modifiers/core/lightning_storm/times/1down
# Increase lightning_storm config score times by 1
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/lightning_storm/**
# @context player

#> Remove 1 from score
scoreboard players remove lightning_storm.times abch.config 1

#> If number outside range, reset score
# If below minimum, set to max
execute if score lightning_storm.times abch.config < #lightning_storm.times_min abch.default run scoreboard players operation lightning_storm.times abch.config = #lightning_storm.times_max abch.default
# If above maximum, set to min
execute if score lightning_storm.times abch.config > #lightning_storm.times_max abch.default run scoreboard players operation lightning_storm.times abch.config = #lightning_storm.times_min abch.default

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/lightning_storm/config