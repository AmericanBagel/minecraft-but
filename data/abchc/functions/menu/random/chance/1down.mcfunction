#> abchc:menu/random/chance/1down
# Decrease random config score chance by 1
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/random/**
# @context player

#> Remove 1 from score
scoreboard players remove random.chance abch.config 1

execute if score random.chance abch.config matches ..-1 run scoreboard players set random.chance abch.config 0

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/random/config