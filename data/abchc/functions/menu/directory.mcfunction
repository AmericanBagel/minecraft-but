#> abchc:menu/directory
# Directory of pages
# @within abchc:menu/**
# @context menu player

###### Expand as new pages are made #######
execute if score @s abch.menu.page matches 1 run function abchc:menu/main
execute if score @s abch.menu.page matches 2 run function abchc:menu/information
execute if score @s abch.menu.page matches 10 run function abchc:menu/modifiers/directory
execute if score @s abch.menu.page matches 11 run function abchc:menu/modifiers/core/1
