#> minecraft_but.core:menu/random/reroll/toggle
# Toggle random config score reroll between 0 and 1
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/random/**
# @context player

# Add score
scoreboard players add random.reroll minecraft_but.config 1

# If score goes above 1, set it to 0
execute if score random.reroll minecraft_but.config matches 2.. run scoreboard players set random.reroll minecraft_but.config 0

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/random/config