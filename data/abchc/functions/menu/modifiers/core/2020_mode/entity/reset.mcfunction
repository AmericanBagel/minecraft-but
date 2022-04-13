#> abchc:menu/modifiers/core/2020_mode/entity/reset
# Reset 2020_mode config score entity to default
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/2020_mode/**
# @context player

#> Reset
# If default was set, set score to default
execute if score 2020_mode.entity abch.default matches -2147483648..2147483647 run scoreboard players operation 2020_mode.entity abch.config = 2020_mode.entity abch.default
# If default wasn't set, set score to 0
execute unless score 2020_mode.entity abch.default matches -2147483648..2147483647 run scoreboard players set 2020_mode.entity abch.config 0

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/2020_mode/config