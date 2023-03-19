##> minecraft_but.coreraft_but.core:modifiers/tp_sneak/raycast/ray
##
## Main raycasting function
##
## 0.5 per step, 70 blocks total = 140
## 70 / 0.5 = 140
##
## @context raycast
##
## @within minecraft_but.coreraft_but.core:modifiers/tp_sneak/raycast/**
#
## If it hits a living entity, run check_hit_entity
#execute if score #hit minecraft_but.tp_sneak.raycast matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @minecraft_but.corepe=#minecraft_but.core:living_base, tag=!minecraft_but.tp_sneak.ray, dx=minecraft_but.corert=nearest ] run function minecraft_but.core:modifiers/tp_sneak/raycast/check_hit_entity
#
## If it runs into some solid block, run trigger
#execute unless block ~ ~ ~ #minecraft_but.coreraft_but.core:air minecraft_but.coreunction minecraft_but.core:modifiers/tp_sneak/raycast/trigger
#
## Add #distance to raycast to increment the loop
#scoreboard players add #distance minecraft_but.tp_sneak.raycast 1
#
## If the loop hasn't ended, run this function again.
#execute if score #hit minecraft_but.tp_sneak.raycast matches 0 if score #distance minecraft_but.tp_sneak.raycast matches ..140 positioned ^ ^ minecraft_but.corerun function minecraft_but.core:modifiers/tp_sneak/raycast/ray