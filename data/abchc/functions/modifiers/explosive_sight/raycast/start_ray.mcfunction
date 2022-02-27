# https://www.skylinerw.com/vdvman1/raycast/
# Skylinerw's raycasting generator based on vdvman1's raycasting functions

tag @s add abch.explosive_sight.ray
scoreboard players set #hit abch.explosive_sight.raycast 0
scoreboard players set #distance abch.explosive_sight.raycast 0
scoreboard players reset #time abch.explosive_sight.raycast
function abchc:modifiers/explosive_sight/raycast/ray
tag @s remove abch.explosive_sight.ray