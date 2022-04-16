#> abchc:menu/modifiers/core/random/interval/reset
# Reset random config score interval to default
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/random/**
# @context player

#> Reset
# If default was set, set score to default
execute if score random.interval abch.default matches -2147483648..2147483647 run scoreboard players operation random.interval abch.config = random.interval abch.default
# If default wasn't set, set score to 1
execute unless score random.interval abch.default matches -2147483648..2147483647 run scoreboard players set random.interval abch.config 1

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/random/config