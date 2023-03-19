#> abchc:menu/modifiers/core/troglodyte/difficulty/down
# Increase troglodyte config score difficulty by 1
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/troglodyte/**
# @context player

#> Remove 1 from score
scoreboard players remove troglodyte.difficulty abch.config 1

#> If number outside range, reset score
# If below minimum, set to max
execute if score troglodyte.difficulty abch.config matches ..0 run scoreboard players set troglodyte.difficulty abch.config 4
execute if score troglodyte.difficulty abch.config matches 4.. run scoreboard players set troglodyte.difficulty abch.config 1

#> Set string based on score
function abchc:menu/modifiers/core/troglodyte/difficulty/update_string

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/troglodyte/config