#> abchc:modifiers/limited_inventory/main
# Main function for "Limited Inventory" modifier
# Players have a limited inventoru
# @within abchc:modifiers/directory
# @context root

#> Run as all non-exempt, non-creative players
# Non-creative players because of https://bugs.mojang.com/browse/MC-229985
# annoying :(

#> Reset temporary scoreboards
scoreboard players reset $bool abch.limited_inventory
scoreboard players reset $clear abch.limited_inventory

#> Run actions function as player
execute as @a[tag=!abch.blacklist,tag=!global.ignore,tag=!abch.limited_inventory.blacklist,gamemode=!creative] at @s run function abchc:modifiers/limited_inventory/actions

#> Clear creative players of glass
clear @a[gamemode=creative,nbt={Inventory:[{tag:{abch:{modifiers:{limited_inventory:1b}}}}]}] minecraft:black_stained_glass_pane{abch:{modifiers:{limited_inventory:1b}}}