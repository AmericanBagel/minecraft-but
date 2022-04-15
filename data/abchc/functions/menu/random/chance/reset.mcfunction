#> abchc:menu/random/chance/reset
# Reset random config score chance to default
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/random/**
# @context player

#> Reset
# If default was set, set score to default
execute if score random.chance abch.default matches -2147483648..2147483647 run scoreboard players operation random.chance abch.config = random.chance abch.default
# If default wasn't set, set score to 1
execute unless score random.chance abch.default matches -2147483648..2147483647 run scoreboard players set random.chance abch.config 1

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/random/config