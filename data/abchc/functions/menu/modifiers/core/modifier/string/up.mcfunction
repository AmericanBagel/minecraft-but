#> abchc:menu/modifiers/core/modifier/string/up
# Turn on toggle config generated with
# the script in ../src
# @within abchc:menu/**
# @context player

#> Add 1 to score
scoreboard players add string abch.config 1

#> If number outside range, reset score
# If below minimum, reset
execute if score string abch.config < #string_min abch.config run function abchc:menu/modifiers/core/modifier/string/reset
# If above maximum, reset
execute if score string abch.config > #string_max abch.config run function abchc:menu/modifiers/core/modifier/string/reset

#> Set string based on score
function abchc:menu/modifiers/core/modifier/string/update_string

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/modifier/config