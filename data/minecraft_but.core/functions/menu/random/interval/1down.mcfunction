#> minecraft_but.core:menu/random/interval/1down
# Decrease random config score interval by 1
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/random/**
# @context player

#> Remove 1 from score
scoreboard players remove random.interval minecraft_but.config 1

execute if score random.interval minecraft_but.config matches ..-1 run scoreboard players set random.interval minecraft_but.config 0

#> Click sound
function minecraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.core:menu/random/config