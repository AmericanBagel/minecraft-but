#> abchc:menu/modifiers/core/modifier/string/update_string
# Turn on toggle config generated with
# the script in ../src
# @within abchc:menu/**
# @context player

#> Add 5 to score
execute if score string abch.config matches 1 run data modify storage abchc:menu/modifiers/core/modifier string set value "Name1"
execute if score string abch.config matches 2 run data modify storage abchc:menu/modifiers/core/modifier string set value "Name2"
execute if score string abch.config matches 3 run data modify storage abchc:menu/modifiers/core/modifier string set value "Name3"
execute if score string abch.config matches 4 run data modify storage abchc:menu/modifiers/core/modifier string set value "Name4"
execute if score string abch.config matches 5 run data modify storage abchc:menu/modifiers/core/modifier string set value "Name5"

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/modifier/config

say upgrade