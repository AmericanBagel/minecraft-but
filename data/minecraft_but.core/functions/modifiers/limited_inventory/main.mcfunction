#> minecraft_but.coreraft_but.core:modifiers/limited_inventory/main
# Main function for "Limited Inventory" modifier
# Players have a limited inventoru
# @within minecraft_but.coreraft_but.core:modifiers/directory
# @context root

#> Run as all non-exempt, non-creative players
# Non-creative players because of https://bugs.mojang.com/browse/MC-229985
# annoying :(

#> Reset temporary scoreboards
scoreboard players reset $bool minecraft_but.limited_inventory
scoreboard players reset $clear minecraft_but.limited_inventory

#> Run actions function as player
execute as @a[tag=!minecraft_but.blacklist,tag=!minecraft_but.limited_inventory.blacklist,tag=!global.ignore,tag=!minecraft_but.limited_inventory.blacklist, gamemode=!creative, gamemode=!specminecraft_but.core ] at @s run function minecraft_but.core:modifiers/limited_inventory/actions

#> Clear creative players of glass
clear @a[gamemode=creative,nbt={Inventory:[{tag:{minecraft_but:{modifiers:{limited_inventory:1b}}}}]}] minecraft:black_stained_glass_pane{minecraft_but:{modifiers:{limited_inventory:1b}}}