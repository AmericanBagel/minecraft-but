#> minecraft_but.core:menu/random/chance/5down
# Decrease random config score chance by 5
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/random/**
# @context player

#> Remove 5 from score
scoreboard players remove random.chance minecraft_but.config 5

execute if score random.chance minecraft_but.config matches ..-1 run scoreboard players set random.chance minecraft_but.config 0

#> Click sound
function minecraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.core:menu/random/config