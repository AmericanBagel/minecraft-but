#execute as @a[tag=!blacklist,tag=!global.ignore] at @s unless score @s abch.esSneak matches 1.. positioned ^ ^ ^.25 positioned ~ ~1.65 ~ run function abchc:modifiers/explosive_sight/raytrace
#execute as @a[tag=!blacklist,tag=!global.ignore] at @s if score @s abch.esSneak matches 1.. positioned ^ ^ ^.25 positioned ~ ~1.35 ~ run function abchc:modifiers/explosive_sight/raytrace
#scoreboard players reset @a[tag=!blacklist,tag=!global.ignore] abch.esSneak
#scoreboard players set @a[tag=!blacklist,tag=!global.ignore] abch.esLimit 0

scoreboard players add global abch.esTimer 1
execute if score global abch.esTimer matches 2.. as @a[tag=!blacklist,tag=!global.ignore] at @s run function abchc:modifiers/explosive_sight/start_raycast
execute if score global abch.esTimer matches 2.. run scoreboard players set global abch.esTimer 0