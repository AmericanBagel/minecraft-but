#execute as @a at @s unless score @s abch_esSneak matches 1.. positioned ^ ^ ^.25 positioned ~ ~1.65 ~ run function abchc:modifiers/explosive_sight/raytrace
#execute as @a at @s if score @s abch_esSneak matches 1.. positioned ^ ^ ^.25 positioned ~ ~1.35 ~ run function abchc:modifiers/explosive_sight/raytrace
#scoreboard players reset @a abch_esSneak
#scoreboard players set @a abch_esLimit 0

scoreboard players add global abch_esTimer 1
execute if score global abch_esTimer matches 2.. as @a at @s run function abchc:modifiers/explosive_sight/start_raytrace
execute if score global abch_esTimer matches 2.. run scoreboard players set global abch_esTimer 0