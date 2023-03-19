# 0.5 per step, 70 blocks total = 140
# 70 / 0.5 = 140

forceload add ~ ~

execute if score #hit minecraft_but.explosive_sight.raycast matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[ type=#minecraft_but.core:living_base, tag=!minecraft_but.explosive_sight.ray, tag=!global.ignore, dx=0, sort=nearest ] run function minecraft_but.core:modifiers/explosive_sight/raycast/check_hit_entity
execute unless block ~ ~ ~ #minecraft_but.core:air run function minecraft_but.core:modifiers/explosive_sight/raycast/trigger
scoreboard players add #distance minecraft_but.explosive_sight.raycast 1
execute if score #hit minecraft_but.explosive_sight.raycast matches 0 if score #distance minecraft_but.explosive_sight.raycast matches ..300 positioned ^ ^ ^0.5 run function minecraft_but.core:modifiers/explosive_sight/raycast/ray

forceload remove ~ ~