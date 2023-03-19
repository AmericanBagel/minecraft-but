#> minecraft_but.core:menu/find_page
# Refresh current page
# @within minecraft_but.core:menu/**
# @context player
# @input
#   score @s minecraft_but.menu.page
#       Player's current menu page

execute as @a at @s if score @s minecraft_but.menu.page matches 1 run function minecraft_but.core:menu/main
execute as @a at @s if score @s minecraft_but.menu.page matches 2 run function minecraft_but.core:menu/information
execute as @a at @s if score @s minecraft_but.menu.page matches 3 run function minecraft_but.core:menu/uninstall
execute as @a at @s if score @s minecraft_but.menu.page matches 10 run function minecraft_but.core:menu/modifiers/directory
execute as @a at @s if score @s minecraft_but.menu.page matches 11 run function minecraft_but.core:menu/modifiers/core/categories
execute as @a at @s if score @s minecraft_but.menu.page matches 12 run function minecraft_but.core:menu/modifiers/core/challenges
execute as @a at @s if score @s minecraft_but.menu.page matches 13 run function minecraft_but.core:menu/modifiers/core/chaos
execute as @a at @s if score @s minecraft_but.menu.page matches 14 run function minecraft_but.core:menu/modifiers/core/effects
execute as @a at @s if score @s minecraft_but.menu.page matches 15 run function minecraft_but.core:menu/modifiers/core/explosions
execute as @a at @s if score @s minecraft_but.menu.page matches 16 run function minecraft_but.core:menu/modifiers/core/mechanic
execute as @a at @s if score @s minecraft_but.menu.page matches 17 run function minecraft_but.core:menu/modifiers/core/misc
execute as @a at @s if score @s minecraft_but.menu.page matches 18 run function minecraft_but.core:menu/modifiers/core/mob
execute as @a at @s if score @s minecraft_but.menu.page matches 19 run function minecraft_but.core:menu/modifiers/core/teleporting