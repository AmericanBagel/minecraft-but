##> abchc:modifiers/tp_sneak/raycast/ray
##
## Main raycasting function
##
## 0.5 per step, 70 blocks total = 140
## 70 / 0.5 = 140
##
## @context raycast
##
## @within abchc:modifiers/tp_sneak/raycast/**
#
## If it hits a living entity, run check_hit_entity
#execute if score #hit abch.tp_sneak.raycast matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[ type=#abchc:living_base, tag=!abch.tp_sneak.ray, dx=0, sort=nearest ] run function abchc:modifiers/tp_sneak/raycast/check_hit_entity
#
## If it runs into some solid block, run trigger
#execute unless block ~ ~ ~ #abchc:air run function abchc:modifiers/tp_sneak/raycast/trigger
#
## Add #distance to raycast to increment the loop
#scoreboard players add #distance abch.tp_sneak.raycast 1
#
## If the loop hasn't ended, run this function again.
#execute if score #hit abch.tp_sneak.raycast matches 0 if score #distance abch.tp_sneak.raycast matches ..140 positioned ^ ^ ^0.5 run function abchc:modifiers/tp_sneak/raycast/ray