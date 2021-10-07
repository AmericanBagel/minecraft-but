#execute as @a at @s unless score @s abch.esSneak matches 1.. positioned ^ ^ ^.25 positioned ~ ~1.65 ~ run function abchc:modifiers/explosive_sight/raytrace
#execute as @a at @s if score @s abch.esSneak matches 1.. positioned ^ ^ ^.25 positioned ~ ~1.35 ~ run function abchc:modifiers/explosive_sight/raytrace
#scoreboard players reset @a abch.esSneak
#scoreboard players set @a abch.esLimit 0

scoreboard players add global abch.esTimer 1
execute if score global abch.esTimer matches 2.. as @a at @s run function abchc:modifiers/explosive_sight/start_raycast
execute if score global abch.esTimer matches 2.. run scoreboard players set global abch.esTimer 0