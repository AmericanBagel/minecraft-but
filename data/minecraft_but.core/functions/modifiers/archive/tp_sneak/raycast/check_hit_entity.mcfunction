##> minecraft_but.coreraft_but.core:modifiers/tp_sneak/raycast/check_hit_entity
##
## Function which checks whether to identify the entity was hit
##
## @context raycast
##
## @within minecraft_but.coreraft_but.core:modifiers/tp_sneak/raycast/ray
#
#execute if score #hit minecraft_but.tp_sneak.raycast matches 0 positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[ dx=0 ] positioned ~0.95 ~0.95 ~0.95 run minecraft_but.coreion minecraft_but.core:modifiers/tp_sneak/raycast/trigger