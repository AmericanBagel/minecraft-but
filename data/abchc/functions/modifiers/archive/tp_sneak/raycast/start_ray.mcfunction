##> abchc:modifiers/tp_sneak/raycast/start_ray
##
## Function which sets up and starts raycasting
##
## https://www.skylinerw.com/vdvman1/raycast/
## Based on Skylinerw's raycasting generator based on vdvman1's raycasting functions
##
## @context raycast
##
## @within abchc:modifiers/tp_sneak/main
#
#tag @s add abch.tp_sneak.ray
#scoreboard players set #hit abch.tp_sneak.raycast 0
#scoreboard players set #distance abch.tp_sneak.raycast 0
#execute positioned ~ ~.225 ~ anchored eyes run function abchc:modifiers/tp_sneak/raycast/ray
#tag @s remove abch.tp_sneak.ray
#
#scoreboard players set @s abch.tp_sneak.timer 20