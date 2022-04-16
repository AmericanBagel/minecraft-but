#> abchc:menu/modifiers/core/random/reroll/reset
# Reset random config score reroll to default
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/random/**
# @context player

#> Reset
# If default was set, set score to default
execute if score random.reroll abch.default matches -2147483648..2147483647 run scoreboard players operation random.reroll abch.config = random.reroll abch.default
# If default wasn't set, set score to 0
execute unless score random.reroll abch.default matches -2147483648..2147483647 run scoreboard players set random.reroll abch.config 0

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/random/config