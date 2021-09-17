scoreboard players add global abch_frTimer 1
execute if score global abch_frTimer matches 3.. as @a at @s run function abchc:modifiers/fire_rain/fire
execute if score global abch_frTimer matches 3.. run scoreboard players reset global abch_frTimer