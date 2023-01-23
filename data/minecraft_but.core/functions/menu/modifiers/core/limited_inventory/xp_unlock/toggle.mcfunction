#> minecraft_but.core:menu/modifiers/core/limited_inventory/xp_unlock/toggle
# Toggle limited_inventory config score xp_unlock between 0 and 1
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/limited_inventory/**
# @context player

# Add score
scoreboard players add limited_inventory.xp_unlock minecraft_but.config 1

# If score goes above 1, set it to 0
execute if score limited_inventory.xp_unlock minecraft_but.config matches 2.. run scoreboard players set limited_inventory.xp_unlock minecraft_but.config 0

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/limited_inventory/config