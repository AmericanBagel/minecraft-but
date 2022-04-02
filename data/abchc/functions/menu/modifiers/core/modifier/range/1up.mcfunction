#> abchc:menu/modifiers/core/modifier/range/1up
# Turn on toggle config generated with
# the script in ../src
# @within abchc:menu/**
# @context player

#> Add 5
scoreboard players add range abch.config 1

#> If number outside range, reset score
# If below minimum, reset
execute if score range abch.config < #range_min abch.config run function abchc:menu/modifiers/core/modifier/range/reset
# If above maximum, reset
execute if score range abch.config > #range_max abch.config run function abchc:menu/modifiers/core/modifier/range/reset

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/modifier/config