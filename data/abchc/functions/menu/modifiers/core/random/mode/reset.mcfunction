#> abchc:menu/modifiers/core/random/mode/reset
# Reset random config score mode to default
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/random/**
# @context player

#> Reset
# If default was set, set score to default
execute if score random.mode abch.default matches -2147483648..2147483647 run scoreboard players operation random.mode abch.config = random.mode abch.default
# If default wasn't set, set score to 1
execute unless score random.mode abch.default matches -2147483648..2147483647 run scoreboard players set random.mode abch.config 1

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/random/config