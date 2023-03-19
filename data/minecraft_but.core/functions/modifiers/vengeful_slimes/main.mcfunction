#function minecraft_but.coreraft_but.core:modifiers/vengeful_slimes/start_lcg

## Fresh slimes are marked as new
#execute as @e[type=slime,tag=!minecraft_but.vsNew,tag=!minecraft_but.vsOld] at @s run tag @s add minecraft_but.vsNew


## Marker is summoned
#execute as @e[type=slime,tag=!minecraft_but.vsMarked,tag=minecraft_but.vsNew] at @s run summon area_effect_cloud ~ ~ ~ {CustomName:'{"text":"minecraft_but.vsMarker"}',Age:-2147483648,Duration:-1,WaitTime:-2147483648}
## Slimes are tagged as marked
#execute as @e[type=slime,tag=!minecraft_but.vsMarked,tag=minecraft_but.vsNew] at @s run tag @s add minecraft_but.vsMarked

#execute as @e[type=slime,tag=!minecraft_but.vsMarked] at @s run scoreboard players operation @s minecraft_but.vsID = @e[type=area_effect_cloud,limit=1,sort=nearest,name="minecraft_but.vsMarker"] minecraft_but.vsID

## AEC markers are tp'ed to slimes
#execute as @e[type=slime,tag=minecraft_but.vsMarked] at @s run tp @e[type=area_effect_cloud,limit=1,sort=nearest,name="minecraft_but.vsMarker"] ~ ~ ~

## AEC markers without a slime are marked as having no slime
#execute as @e[type=area_effect_cloud,name="minecraft_but.vsMarker"] at @s unless entity @e[type=slime,distance=..1,tag=!minecraft_but.vsNew,tag=minecraft_but.vsMarked] run tag @s add minecraft_but.vsNoSlime
## New slimes near a slimeless AEC marker have their sizes put into a scoreboard
#execute as @e[type=slime,tag=minecraft_but.vsNew] at @s if entity @e[type=area_effect_cloud,name="minecraft_but.vsMarker",tag=minecraft_but.vsNoSlime,distance=..2.5] store result score @s minecraft_but.vsSize run data get entity @s Size
## New slimes near a slimeless AEC marker have their Size score increased by 3 so they are 1 larger than their parent
#execute as @e[type=slime,tag=minecraft_but.vsNew] at @s if entity @e[type=area_effect_cloud,name="minecraft_but.vsMarker",tag=minecraft_but.vsNoSlime,distance=..2.5] run scoreboard players add @s minecraft_but.vsSize 3
## New slimes near a slimeless AEC marker have their now-larger Size score put into their Size
#execute as @e[type=slime,tag=minecraft_but.vsNew] at @s if entity @e[type=area_effect_cloud,name="minecraft_but.vsMarker",tag=minecraft_but.vsNoSlime,distance=..2.5] store result entity @s Size byte 1 run scoreboard players get @s minecraft_but.vsSize


## Slimeless AEC markers are killed
#kill @e[type=area_effect_cloud,name="minecraft_but.vsMarker",tag=minecraft_but.vsNoSlime]

## New slimes lose new tags, gain old tags
#tag @e[type=slime,tag=!minecraft_but.vsOld] remove minecraft_but.vsNew
#tag @e[type=slime,tag=!minecraft_but.vsOld] add minecraft_but.vsOld
