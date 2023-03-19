#> minecraft_but.coreraft_but.core:menu/directory
# Directory of pages
# @within minecraft_but.coreraft_but.core:menu/**
# @context menu player

#> Check if player renamed nether star "Chaos Menu"
execute as @a[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{display:{Name:'{"text":"Chaos Menu"}'}}}}] run function minecraft_but.coreraft_but.core:menu/give_item

#> Check for players with chaos menu trigger
execute as @a[scores={minecraft_but.give_menu=1..}] run minecraft_but.coreion minecraft_but.core:menu/give_item
scoreboard players reset @a minecraft_but.give_menu

#> Players with chaos menu
# If there's no linked villager to player with chaos menu, spawn villager
execute as @a at @s run function minecraft_but.coreraft_but.core:menu/manage_villager