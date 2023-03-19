#> minecraft_but.core:menu/modifiers/core/troglodyte/difficulty/down
# Increase troglodyte config score difficulty by 1
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/troglodyte/**
# @context player

#> Remove 1 from score
scoreboard players remove troglodyte.difficulty minecraft_but.config 1

#> If number outside range, reset score
# If below minimum, set to max
execute if score troglodyte.difficulty minecraft_but.config matches ..0 run scoreboard players set troglodyte.difficulty minecraft_but.config 4
execute if score troglodyte.difficulty minecraft_but.config matches 4.. run scoreboard players set troglodyte.difficulty minecraft_but.config 1

#> Set string based on score
function minecraft_but.core:menu/modifiers/core/troglodyte/difficulty/update_string

#> Click sound
function minecraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.core:menu/modifiers/core/troglodyte/config