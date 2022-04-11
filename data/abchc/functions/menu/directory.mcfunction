#> abchc:menu/directory
# Directory of pages
# @within abchc:menu/**
# @context menu player

#> Check if player renamed nether star "Chaos Menu"
execute as @a[nbt={SelectedItem:{id:"minecraft:nether_star",tag:{display:{Name:'{"text":"Chaos Menu"}'}}}}] at @s run function abchc:menu/give_item

#> Players with chaos menu
# If there's no linked villager to player with chaos menu, spawn villager
execute as @a at @s run function abchc:menu/manage_villager



###### Expand as new pages are made #######
execute as @a at @s if score @s abch.menu.page matches 1 run function abchc:menu/main
execute as @a at @s if score @s abch.menu.page matches 2 run function abchc:menu/information
execute as @a at @s if score @s abch.menu.page matches 10 run function abchc:menu/modifiers/directory
execute as @a at @s if score @s abch.menu.page matches 11 run function abchc:menu/modifiers/core/categories
execute as @a at @s if score @s abch.menu.page matches 12 run function abchc:menu/modifiers/core/challenges
execute as @a at @s if score @s abch.menu.page matches 13 run function abchc:menu/modifiers/core/chaos
execute as @a at @s if score @s abch.menu.page matches 14 run function abchc:menu/modifiers/core/effects
execute as @a at @s if score @s abch.menu.page matches 15 run function abchc:menu/modifiers/core/explosions
execute as @a at @s if score @s abch.menu.page matches 16 run function abchc:menu/modifiers/core/mechanic
execute as @a at @s if score @s abch.menu.page matches 17 run function abchc:menu/modifiers/core/misc
execute as @a at @s if score @s abch.menu.page matches 18 run function abchc:menu/modifiers/core/mob
execute as @a at @s if score @s abch.menu.page matches 19 run function abchc:menu/modifiers/core/teleporting