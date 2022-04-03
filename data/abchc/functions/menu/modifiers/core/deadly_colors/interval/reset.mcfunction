#> abchc:menu/modifiers/core/deadly_colors/interval/reset
# Reset deadly_colors config score interval to default
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/deadly_colors/**
# @context player

#> Reset
# If default was set, set score to default
execute if score deadly_colors.interval abch.default matches -2147483648..2147483647 run scoreboard players operation deadly_colors.interval abch.config = deadly_colors.interval abch.default
# If default wasn't set, set score to 1
execute unless score deadly_colors.interval abch.default matches -2147483648..2147483647 run scoreboard players set deadly_colors.interval abch.config 1

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/deadly_colors/config