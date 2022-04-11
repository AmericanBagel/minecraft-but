#> abchc:menu/directory
# Directory of pages
# @within abchc:menu/**
# @context menu player

#> Check if player renamed nether star "Chaos Menu"
execute as @a[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{display:{Name:'{"text":"Chaos Menu"}'}}}}] at @s run function abchc:menu/give_item

#> Players with chaos menu
# If there's no linked villager to player with chaos menu, spawn villager
execute as @a at @s run function abchc:menu/manage_villager