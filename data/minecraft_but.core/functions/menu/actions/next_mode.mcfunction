#> minecraft_but.core:menu/actions/next_mode
# Go to next mode -- either Manual or Random.
#
# @within minecraft_but.core:menu/random/**
# @context player

#> Add 1 to score
scoreboard players add mode minecraft_but.config 1

#> If number outside range, reset score
execute if score mode minecraft_but.config matches 3.. run scoreboard players set mode minecraft_but.config 1

#> Click sound
function minecraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.core:menu/main