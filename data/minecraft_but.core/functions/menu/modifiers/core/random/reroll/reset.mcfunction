#> minecraft_but.coreraft_but.core:menu/modifiers/core/random/reroll/reset
# Reset random config score reroll to default
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.coreraft_but.core:menu/modifiers/core/random/**
# @context player

#> Reset
# If default was set, set score to default
execute if score random.reroll minecraft_but.default matches -2147483648..2147483647 run scoreboard players operation random.reroll minecraft_but.config = random.reroll minecraft_but.default
# If default wasn't set, set score to 0
execute unless score random.reroll minecraft_but.default matches -2147483648..2147483647 run scoreboard players set random.reroll minecraft_but.config 0

#> Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/random/config