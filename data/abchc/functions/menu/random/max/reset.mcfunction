#> abchc:menu/random/max/reset
# Reset random config score modifiers to default
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/random/**
# @context player

#> Reset
# If default was set, set score to default
execute if score random.max abch.default matches -2147483648..2147483647 run scoreboard players operation random.max abch.config = random.max abch.default
# If default wasn't set, set score to 1
execute unless score random.max abch.default matches -2147483648..2147483647 run scoreboard players set random.max abch.config 1

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/random/config