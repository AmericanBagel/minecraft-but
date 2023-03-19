#> minecraft_but.core:menu/random/max/1up
# Increase random config score modifiers by 1
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/random/**
# @context player

#> Add 1 to score
scoreboard players add random.max minecraft_but.config 1

execute if score random.max minecraft_but.config > $total_modifiers minecraft_but.toggle run scoreboard players operation random.max minecraft_but.config = $total_modifiers minecraft_but.toggle

#> Click sound
function minecraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.core:menu/random/config