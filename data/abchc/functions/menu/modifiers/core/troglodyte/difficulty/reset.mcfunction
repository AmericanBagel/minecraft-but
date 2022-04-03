#> abchc:menu/modifiers/core/troglodyte/difficulty/reset
# Reset troglodyte config score difficulty to default
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/troglodyte/**
# @context player

#> Reset
# If default was set, set score to default
execute if score troglodyte.difficulty abch.default matches -2147483648..2147483647 run scoreboard players operation troglodyte.difficulty abch.config = troglodyte.difficulty abch.default
# If default wasn't set, set score to 1
execute unless score troglodyte.difficulty abch.default matches -2147483648..2147483647 run scoreboard players set troglodyte.difficulty abch.config 1

#> Click sound
function abchc:menu/actions/click

#> Update string
function abchc:menu/modifiers/core/troglodyte/difficulty/update_string

#> Update menu
function abchc:menu/modifiers/core/troglodyte/config