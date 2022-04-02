#> abchc:menu/directory
# Directory of pages
# @within abchc:menu/**
# @context menu player

###### Expand as new pages are made #######
execute if score @s abch.menu.page matches 1 run function abchc:menu/main
execute if score @s abch.menu.page matches 2 run function abchc:menu/information
execute if score @s abch.menu.page matches 10 run function abchc:menu/modifiers/directory
execute if score @s abch.menu.page matches 11 run function abchc:menu/modifiers/core/categories
execute if score @s abch.menu.page matches 12 run function abchc:menu/modifiers/core/challenges
execute if score @s abch.menu.page matches 13 run function abchc:menu/modifiers/core/chaos
execute if score @s abch.menu.page matches 14 run function abchc:menu/modifiers/core/effects
execute if score @s abch.menu.page matches 15 run function abchc:menu/modifiers/core/explosions
execute if score @s abch.menu.page matches 16 run function abchc:menu/modifiers/core/mechanic
execute if score @s abch.menu.page matches 17 run function abchc:menu/modifiers/core/misc
execute if score @s abch.menu.page matches 18 run function abchc:menu/modifiers/core/mob
execute if score @s abch.menu.page matches 19 run function abchc:menu/modifiers/core/teleporting
