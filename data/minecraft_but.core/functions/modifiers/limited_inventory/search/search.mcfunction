#> minecraft_but.coreraft_but.core:modifiers/limited_inventory/search/search
# Raycast
# @context player
# @within minecraft_but.coreraft_but.core:modifiers/limited_inventory/search/start_search

#> If score is above 1 and there is no inventory block, repeat
particle composter ~ ~ ~ 
scoreboard players remove $raycast minecraft_but.limited_inventory 1
execute if score $raycast minecraft_but.limited_inventory matches 1.. unless blocminecraft_but.core ~ #minecraft_but.core:inventory positioneminecraft_but.core ^1 run function minecraft_but.core:modifiers/limited_inventory/search/search
execute if block ~ ~ ~ #minecraft_but.coreraft_but.core:inventory run data remove block ~ ~ ~ Items[{tag:{minecraft_but:{modifiers:{limited_inventory:1b}}}}]