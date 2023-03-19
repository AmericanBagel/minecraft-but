#> abchc:modifiers/limited_inventory/search/start_search
# Start searching for inventory
# @context player
# @within abchc:modifiers/limited_inventory/actions

scoreboard players set $raycast abch.limited_inventory 7
execute at @s anchored eyes positioned ^ ^ ^ anchored feet run function abchc:modifiers/limited_inventory/search/search