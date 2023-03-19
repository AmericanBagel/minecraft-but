#> abchc:menu/modifiers/core/troglodyte/difficulty/update_string
# Update displayed string based on score troglodyte.difficulty
# the script in ../src
#
# @within abchc:menu/modifiers/core/troglodyte/**
# @context player

#> Update
execute if score troglodyte.difficulty abch.config matches 1 run data modify storage abchc:menu/modifiers/core/troglodyte difficulty set value Easy
execute if score troglodyte.difficulty abch.config matches 2 run data modify storage abchc:menu/modifiers/core/troglodyte difficulty set value Normal
execute if score troglodyte.difficulty abch.config matches 3 run data modify storage abchc:menu/modifiers/core/troglodyte difficulty set value Hard

#> Click sound
function abchc:menu/actions/click
            
#> Update menu
function abchc:menu/modifiers/core/troglodyte/config