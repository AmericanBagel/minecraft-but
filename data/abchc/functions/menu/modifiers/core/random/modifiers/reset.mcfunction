#> abchc:menu/modifiers/core/random/modifiers/reset
# Reset random config score modifiers to default
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/random/**
# @context player

#> Reset
# If default was set, set score to default
execute if score random.modifiers abch.default matches -2147483648..2147483647 run scoreboard players operation random.modifiers abch.config = random.modifiers abch.default
# If default wasn't set, set score to 1
execute unless score random.modifiers abch.default matches -2147483648..2147483647 run scoreboard players set random.modifiers abch.config 1

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/random/config