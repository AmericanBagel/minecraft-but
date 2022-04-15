#> abchc:menu/actions/next_mode
# Go to next mode -- either Manual or Random.
#
# @within abchc:menu/random/**
# @context player

#> Add 1 to score
scoreboard players add mode abch.config 1

#> If number outside range, reset score
execute if score mode abch.config matches 3.. run scoreboard players set mode abch.config 1

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/main