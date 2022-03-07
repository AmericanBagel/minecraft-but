##> abchc:modifiers/tp_sneak/raycast/check_hit_entity
##
## Function which checks whether to identify the entity was hit
##
## @context raycast
##
## @within abchc:modifiers/tp_sneak/raycast/ray
#
#execute if score #hit abch.tp_sneak.raycast matches 0 positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[ dx=0 ] positioned ~0.95 ~0.95 ~0.95 run function abchc:modifiers/tp_sneak/raycast/trigger