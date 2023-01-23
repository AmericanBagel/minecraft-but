# https://www.skylinerw.com/vdvman1/raycast/
# Skylinerw's raycasting generator based on vdvman1's raycasting functions

tag @s add minecraft_but.explosive_sight.ray
scoreboard players set #hit minecraft_but.explosive_sight.raycast 0
scoreboard players set #distance minecraft_but.explosive_sight.raycast 0
scoreboard players reset #time minecraft_but.explosive_sight.raycast
function minecraft_but.core:modifiers/explosive_sight/raycast/ray
tag @s remove minecraft_but.explosive_sight.ray