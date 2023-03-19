#> abchc:menu/manage_villager
# Manage villager right-click detection
# @within abchc:menu/find_page
# @context player

#> Set .search to player SID score
scoreboard players operation .search abch.menu.sid = @s abch.menu.sid

#> If there's no villager and player has item, summon villager
execute if entity @s[nbt={SelectedItem:{tag:{abch:{menu:1b}}}}] unless entity @e[type=villager,tag=abch.menu,predicate=abchc:menu/sid] at @s run function abchc:menu/summon_villager

#> TP villager in front of players
execute if entity @e[type=villager,tag=abch.menu,predicate=abchc:menu/sid] as @e[type=villager,tag=abch.menu,predicate=abchc:menu/sid] run function abchc:menu/tp_villager

execute if entity @s[nbt=!{SelectedItem:{tag:{abch:{menu:1b}}}}] at @e[type=villager,tag=abch.menu,predicate=abchc:menu/sid] run tp @e[tag=abch.menu,limit=1,sort=nearest] ~ ~-1000 ~
execute if entity @s[nbt=!{SelectedItem:{tag:{abch:{menu:1b}}}}] at @e[type=villager,tag=abch.menu,predicate=abchc:menu/sid] run kill @e[tag=abch.menu,limit=1,sort=nearest]

#> On right click
execute if score @s abch.menu.right_click matches 1.. if entity @e[type=villager,tag=abch.menu,predicate=abchc:menu/sid] run function abchc:menu/main
execute if score @s abch.menu.right_click matches 1.. if entity @e[type=villager,tag=abch.menu,predicate=abchc:menu/sid] run scoreboard players reset @s abch.menu.right_click