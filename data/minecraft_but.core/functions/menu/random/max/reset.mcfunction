#> minecraft_but.coreraft_but.core:menu/random/max/reset
# Reset random config score modifiers to default
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.coreraft_but.core:menu/random/**
# @context player

#> Reset
# If default was set, set score to default
execute if score random.max minecraft_but.default matches -2147483648..2147483647 run scoreboard players operation random.max minecraft_but.config = random.max minecraft_but.default
# If default wasn't set, set score to 1
execute unless score random.max minecraft_but.default matches -2147483648..2147483647 run scoreboard players set random.max minecraft_but.config 1

#> Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.coreraft_but.core:menu/random/config