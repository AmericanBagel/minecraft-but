#> minecraft_but.coreraft_but.core:menu/random/max/1down
# Decrease random config score modifiers by 1
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.coreraft_but.core:menu/random/**
# @context player

#> Remove 1 from score
scoreboard players remove random.max minecraft_but.config 1

execute if score random.max minecraft_but.config matches ..-1 run scoreboard players set random.max minecraft_but.config 0

#> Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.coreraft_but.core:menu/random/config