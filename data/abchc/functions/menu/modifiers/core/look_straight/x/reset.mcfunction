#> abchc:menu/modifiers/core/look_straight/x/reset
# Reset look_straight config score x to default
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/look_straight/**
# @context player

#> Reset
# If default was set, set score to default
execute if score look_straight.x abch.default matches -2147483648..2147483647 run scoreboard players operation look_straight.x abch.config = look_straight.x abch.default
# If default wasn't set, set score to 0
execute unless score look_straight.x abch.default matches -2147483648..2147483647 run scoreboard players set look_straight.x abch.config 0

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/look_straight/config