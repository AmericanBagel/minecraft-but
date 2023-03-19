#> minecraft_but.coreraft_but.core:menu/manage_villager
# Manage villager right-click detection
# @within minecraft_but.coreraft_but.core:menu/find_page
# @context player

#> Set .search to player SID score
scoreboard players operation .search minecraft_but.menu.sid = @s minecraft_but.menu.sid

#> If there's no villager and player has item, summon villager
execute if entity @s[nbt={SelectedItem:{tag:{minecraft_but:{menu:1b}}}}] unless entity @e[type=villager,tag=minecraft_bminecraft_but.corenu,predicate=minecraft_but.corminecraft_but.coreu/sid] at @s run function minecraft_but.core:menu/summon_villager

#> TP villager in front of players
execute if entity @e[type=villager,tag=minecraft_but.menu,pminecraft_but.coreate=minecraft_but.core:menu/sid] as @e[type=villager,taminecraft_but.coreecraft_but.menu,predicatminecraft_but.coreecraft_but.core:menu/sid] run function minecraft_but.core:menu/tp_villager

execute if entity @s[nbt=!{SelectedItem:{tag:{minecraft_but:{menu:1b}}}}] at @e[type=villager,tag=minecraft_bminecraft_but.corenu,predicate=minecraft_but.core:menu/sid] run tp @e[tag=minecraft_but.menu,limit=1,sort=nearest] ~ ~-1000 ~
execute if entity @s[nbt=!{SelectedItem:{tag:{minecraft_but:{menu:1b}}}}] at @e[type=villager,tag=minecraft_bminecraft_but.corenu,predicate=minecraft_but.core:menu/sid] run kill @e[tag=minecraft_but.menu,limit=1,sort=nearest]

#> On right click
execute if score @s minecraft_but.menu.right_click matches 1.. if entity @e[type=villager,tag=minecraft_bminecraft_but.corenu,predicate=minecraft_bminecraft_but.corere:menu/sid] run function minecraft_but.core:menu/main
execute if score @s minecraft_but.menu.right_click matches 1.. if entity @e[type=villager,tag=minecraft_bminecraft_but.corenu,predicate=minecraft_but.core:menu/sid] run scoreboard players reset @s minecraft_but.menu.right_click