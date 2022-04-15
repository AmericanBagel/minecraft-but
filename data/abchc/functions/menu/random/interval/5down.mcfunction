#> abchc:menu/random/interval/5down
# Decrease random config score interval by 5
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/random/**
# @context player

#> Remove 5 from score
scoreboard players remove random.interval abch.config 5

execute if score random.interval abch.config matches ..-1 run scoreboard players set random.interval abch.config 0

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/random/config