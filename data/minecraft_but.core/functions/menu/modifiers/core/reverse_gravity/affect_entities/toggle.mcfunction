#> minecraft_but.coreraft_but.core:menu/modifiers/core/reverse_gravity/affect_entities/toggle
# Toggle reverse_gravity config score affect_entities between 0 and 1
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.coreraft_but.core:menu/modifiers/core/reverse_gravity/**
# @context player

# Add score
scoreboard players add reverse_gravity.affect_entities minecraft_but.config 1

# If score goes above 1, set it to 0
execute if score reverse_gravity.affect_entities minecraft_but.config matches 2.. run scoreboard players set reverse_gravity.affect_entities minecraft_but.config 0

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/reverse_gravity/config