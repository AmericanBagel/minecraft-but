#> minecraft_but.core:menu/modifiers/core/fire_walker/effect/toggle
# Toggle fire_walker config score effect between 0 and 1
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/fire_walker/**
# @context player

# Add score
scoreboard players add fire_walker.effect minecraft_but.config 1

# If score goes above 1, set it to 0
execute if score fire_walker.effect minecraft_but.config matches 2.. run scoreboard players set fire_walker.effect minecraft_but.config 0

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/fire_walker/config