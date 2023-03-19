#function abchc:modifiers/vengeful_slimes/start_lcg

## Fresh slimes are marked as new
#execute as @e[type=slime,tag=!abch.vsNew,tag=!abch.vsOld] at @s run tag @s add abch.vsNew


## Marker is summoned
#execute as @e[type=slime,tag=!abch.vsMarked,tag=abch.vsNew] at @s run summon area_effect_cloud ~ ~ ~ {CustomName:'{"text":"abch.vsMarker"}',Age:-2147483648,Duration:-1,WaitTime:-2147483648}
## Slimes are tagged as marked
#execute as @e[type=slime,tag=!abch.vsMarked,tag=abch.vsNew] at @s run tag @s add abch.vsMarked

#execute as @e[type=slime,tag=!abch.vsMarked] at @s run scoreboard players operation @s abch.vsID = @e[type=area_effect_cloud,limit=1,sort=nearest,name="abch.vsMarker"] abch.vsID

## AEC markers are tp'ed to slimes
#execute as @e[type=slime,tag=abch.vsMarked] at @s run tp @e[type=area_effect_cloud,limit=1,sort=nearest,name="abch.vsMarker"] ~ ~ ~

## AEC markers without a slime are marked as having no slime
#execute as @e[type=area_effect_cloud,name="abch.vsMarker"] at @s unless entity @e[type=slime,distance=..1,tag=!abch.vsNew,tag=abch.vsMarked] run tag @s add abch.vsNoSlime
## New slimes near a slimeless AEC marker have their sizes put into a scoreboard
#execute as @e[type=slime,tag=abch.vsNew] at @s if entity @e[type=area_effect_cloud,name="abch.vsMarker",tag=abch.vsNoSlime,distance=..2.5] store result score @s abch.vsSize run data get entity @s Size
## New slimes near a slimeless AEC marker have their Size score increased by 3 so they are 1 larger than their parent
#execute as @e[type=slime,tag=abch.vsNew] at @s if entity @e[type=area_effect_cloud,name="abch.vsMarker",tag=abch.vsNoSlime,distance=..2.5] run scoreboard players add @s abch.vsSize 3
## New slimes near a slimeless AEC marker have their now-larger Size score put into their Size
#execute as @e[type=slime,tag=abch.vsNew] at @s if entity @e[type=area_effect_cloud,name="abch.vsMarker",tag=abch.vsNoSlime,distance=..2.5] store result entity @s Size byte 1 run scoreboard players get @s abch.vsSize


## Slimeless AEC markers are killed
#kill @e[type=area_effect_cloud,name="abch.vsMarker",tag=abch.vsNoSlime]

## New slimes lose new tags, gain old tags
#tag @e[type=slime,tag=!abch.vsOld] remove abch.vsNew
#tag @e[type=slime,tag=!abch.vsOld] add abch.vsOld
