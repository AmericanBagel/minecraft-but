#> abchc:menu/modifiers/core/modifier/number/5down
# Turn on toggle config generated with
# the script in ../src
# @within abchc:menu/**
# @context player

#> Add 5 to score
scoreboard players remove number abch.config 5

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/modifier/config