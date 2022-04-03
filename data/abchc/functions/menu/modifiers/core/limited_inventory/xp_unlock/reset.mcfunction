#> abchc:menu/modifiers/core/limited_inventory/xp_unlock/reset
# Reset limited_inventory config score xp_unlock to default
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/limited_inventory/**
# @context player

#> Reset
# If default was set, set score to default
execute if score limited_inventory.xp_unlock abch.default matches -2147483648..2147483647 run scoreboard players operation limited_inventory.xp_unlock abch.config = limited_inventory.xp_unlock abch.default
# If default wasn't set, set score to 0
execute unless score limited_inventory.xp_unlock abch.default matches -2147483648..2147483647 run scoreboard players set limited_inventory.xp_unlock abch.config 0

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/limited_inventory/config