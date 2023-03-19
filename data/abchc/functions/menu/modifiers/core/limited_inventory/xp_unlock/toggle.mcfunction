#> abchc:menu/modifiers/core/limited_inventory/xp_unlock/toggle
# Toggle limited_inventory config score xp_unlock between 0 and 1
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/limited_inventory/**
# @context player

# Add score
scoreboard players add limited_inventory.xp_unlock abch.config 1

# If score goes above 1, set it to 0
execute if score limited_inventory.xp_unlock abch.config matches 2.. run scoreboard players set limited_inventory.xp_unlock abch.config 0

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/core/limited_inventory/config