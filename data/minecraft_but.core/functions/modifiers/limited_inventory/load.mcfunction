#> minecraft_but.core:modifiers/limited_inventory/load
# Load function for limited inventory
# which manages objectives and configs
# @within minecraft_but.core:modifiers/load
# @context root
# @outputs

#> Base objective
# Handles any temporary enumerators
# Player value is how maby slots are unlocked
scoreboard objectives add minecraft_but.limited_inventory dummy

#> How many slots are unlocked
scoreboard objectives add minecraft_but.limited_inventory.slots dummy

#> Enable unlocking slots with XP by default
execute unless score limited_inventory.xp_unlock minecraft_but.config matches -2147483648..2147483647 run scoreboard players set limited_inventory.xp_unlock minecraft_but.default 1

#> Set math constant
scoreboard players set #28 minecraft_but.math 28