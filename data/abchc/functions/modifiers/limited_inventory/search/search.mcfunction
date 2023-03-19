#> abchc:modifiers/limited_inventory/search/search
# Raycast
# @context player
# @within abchc:modifiers/limited_inventory/search/start_search

#> If score is above 1 and there is no inventory block, repeat
particle composter ~ ~ ~ 
scoreboard players remove $raycast abch.limited_inventory 1
execute if score $raycast abch.limited_inventory matches 1.. unless block ~ ~ ~ #abchc:inventory positioned ^ ^ ^1 run function abchc:modifiers/limited_inventory/search/search
execute if block ~ ~ ~ #abchc:inventory run data remove block ~ ~ ~ Items[{tag:{abch:{modifiers:{limited_inventory:1b}}}}]