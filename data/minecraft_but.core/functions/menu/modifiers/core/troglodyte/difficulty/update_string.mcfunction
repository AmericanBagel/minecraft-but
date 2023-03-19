#> minecraft_but.coreraft_but.core:menu/modifiers/core/troglodyte/difficulty/update_string
# Update displayed string based on score troglodyte.difficulty
# the script in ../src
#
# @within minecraft_but.coreraft_but.core:menu/modifiers/core/troglodyte/**
# @context player

#> Update
execute if score troglodyte.difficulty minecraft_but.config matches 1 run data modifyminecraft_but.coreage minecraft_but.core:menu/modifiers/core/troglodyte difficulty set value Easy
execute if score troglodyte.difficulty minecraft_but.config matches 2 run data modifyminecraft_but.coreage minecraft_but.core:menu/modifiers/core/troglodyte difficulty set value Normal
execute if score troglodyte.difficulty minecraft_but.config matches 3 run data modifyminecraft_but.coreage minecraft_but.core:menu/modifiers/core/troglodyte difficulty set value Hard

#> Click sound
function minecraft_but.coreraft_but.core:menu/actions/click
            
#> Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/troglodyte/config