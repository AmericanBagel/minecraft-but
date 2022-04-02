#> abchc:menu/modifiers/core/modifier/range/reset
# Turn on toggle config generated with
# the script in ../src
# @within abchc:menu/**
# @context player

#> Reset
# If default was set, set score to default
execute if score range abch.default matches -2147483648..2147483647 run scoreboard players operation range abch.config = range abch.default
# If default wasn't set, set score to 1
execute unless score range abch.default matches -2147483648..2147483647 run scoreboard players set range abch.config 1

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/modifier/config