# 0.5 per step, 70 blocks total = 140
# 70 / 0.5 = 140

forceload add ~ ~

execute if score #hit abch.explosive_sight.raycast matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[ type=#abchc:living_base, tag=!abch.explosive_sight.ray, dx=0, sort=nearest ] run function abchc:modifiers/explosive_sight/raycast/check_hit_entity
execute unless block ~ ~ ~ #abchc:air run function abchc:modifiers/explosive_sight/raycast/trigger
scoreboard players add #distance abch.explosive_sight.raycast 1
execute if score #hit abch.explosive_sight.raycast matches 0 if score #distance abch.explosive_sight.raycast matches ..300 positioned ^ ^ ^0.5 run function abchc:modifiers/explosive_sight/raycast/ray

forceload remove ~ ~