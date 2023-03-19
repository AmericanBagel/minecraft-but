#> minecraft_but.coreraft_but.core:menu/modifiers/core/limited_inventory/xp_unlock/reset
# Reset limited_inventory config score xp_unlock to default
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.coreraft_but.core:menu/modifiers/core/limited_inventory/**
# @context player

#> Reset
# If default was set, set score to default
execute if score limited_inventory.xp_unlock minecraft_but.default matches -2147483648..2147483647 run scoreboard players operation limited_inventory.xp_unlock minecraft_but.config = limited_inventory.xp_unlock minecraft_but.default
# If default wasn't set, set score to 0
execute unless score limited_inventory.xp_unlock minecraft_but.default matches -2147483648..2147483647 run scoreboard players set limited_inventory.xp_unlock minecraft_but.config 0

#> Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/limited_inventory/config