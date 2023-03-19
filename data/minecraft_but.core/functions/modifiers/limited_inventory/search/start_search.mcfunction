#> minecraft_but.core:modifiers/limited_inventory/search/start_search
# Start searching for inventory
# @context player
# @within minecraft_but.core:modifiers/limited_inventory/actions

scoreboard players set $raycast minecraft_but.limited_inventory 7
execute at @s anchored eyes positioned ^ ^ ^ anchored feet run function minecraft_but.core:modifiers/limited_inventory/search/search