#> abchc:modifiers/2020_mode/main
# Push players away from other players
# @within abchc:modifiers/directory
# @context player

#execute as @a[ tag=!abch.blacklist, tag=!abch.2020_mode.blacklist, tag=!global.ignore ] at @s if entity @a[ distance=0.01..2 ] run effect give @s minecraft:wither 1 0 true
#execute as @a[ tag=!abch.blacklist, tag=!abch.2020_mode.blacklist, tag=!global.ignore ] at @s if entity @s[ distance=0.01..2 ] run title @s times 0 1 1

scoreboard players reset @e abch.2020_mode.x
scoreboard players reset @e abch.2020_mode.z

#> Move entities away
execute if score 2020_mode.entity abch.config matches 1 as @a[ tag=!abch.blacklist, tag=!abch.2020_mode.blacklist, tag=!global.ignore ] at @s as @e[distance=..5,type=#aestd1:non-marker,type=#abchc:2020_mode,type=!minecraft:player,tag=!global.ignore] run function abchc:modifiers/2020_mode/entity

#> Move players away
execute if score 2020_mode.player abch.config matches 1 as @a[ tag=!abch.blacklist, tag=!abch.2020_mode.blacklist, tag=!global.ignore ] at @s if entity @a[distance=0.0001..5] run function abchc:modifiers/2020_mode/player

#> Particles
execute as @a[ tag=!abch.blacklist, tag=!abch.2020_mode.blacklist, tag=!global.ignore, sort=nearest] at @s run function abchc:modifiers/2020_mode/particles/start