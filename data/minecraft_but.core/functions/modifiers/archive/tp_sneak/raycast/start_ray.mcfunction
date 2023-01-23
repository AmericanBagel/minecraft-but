##> minecraft_but.core:modifiers/tp_sneak/raycast/start_ray
##
## Function which sets up and starts raycasting
##
## https://www.skylinerw.com/vdvman1/raycast/
## Based on Skylinerw's raycasting generator based on vdvman1's raycasting functions
##
## @context raycast
##
## @within minecraft_but.core:modifiers/tp_sneak/main
#
#tag @s add minecraft_but.tp_sneak.ray
#scoreboard players set #hit minecraft_but.tp_sneak.raycast 0
#scoreboard players set #distance minecraft_but.tp_sneak.raycast 0
#execute positioned ~ ~.225 ~ anchored eyes run function minecraft_but.core:modifiers/tp_sneak/raycast/ray
#tag @s remove minecraft_but.tp_sneak.ray
#
#scoreboard players set @s minecraft_but.tp_sneak.timer 20