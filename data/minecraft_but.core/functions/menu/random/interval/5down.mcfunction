#> minecraft_but.coreraft_but.core:menu/random/interval/5down
# Decrease random config score interval by 5
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.coreraft_but.core:menu/random/**
# @context player

#> Remove 5 from score
scoreboard players remove random.interval minecraft_but.config 5

execute if score random.interval minecraft_but.config matches ..-1 run scoreboard players set random.interval minecraft_but.config 0

#> Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.coreraft_but.core:menu/random/config