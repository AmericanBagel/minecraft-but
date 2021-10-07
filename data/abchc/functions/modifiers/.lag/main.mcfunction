execute as @a at @s if predicate abchc:05pct run function abchc:modifiers/lag/marker

scoreboard players add @e[type=marker,tag=abch_lagMarker] abch_lagTimer 1

execute as @a at @s store result score @s abch_lagUUID1 run data get entity @s UUID[0]
execute as @a at @s store result score @s abch_lagUUID2 run data get entity @s UUID[1]
execute as @a at @s store result score @s abch_lagUUID3 run data get entity @s UUID[2]
execute as @a at @s store result score @s abch_lagUUID4 run data get entity @s UUID[3]

#execute as @e[type=marker,tag=abch_lagMarker] at @s if score @s abch_lagTimer matches 1..20 if predicate abchc:01pct run function abchc:modifiers/lag/lag
#execute as @e[type=marker,tag=abch_lagMarker] at @s if score @s abch_lagTimer matches 21..40 if predicate abchc:02pct run function abchc:modifiers/lag/lag
#execute as @e[type=marker,tag=abch_lagMarker] at @s if score @s abch_lagTimer matches 41..80 if predicate abchc:075pct run function abchc:modifiers/lag/lag
execute as @e[type=marker,tag=abch_lagMarker] at @s if score @s abch_lagTimer matches 81..120 if predicate abchc:2pct run function abchc:modifiers/lag/lag
execute as @e[type=marker,tag=abch_lagMarker] at @s if score @s abch_lagTimer matches 121..140 if predicate abchc:10pct run function abchc:modifiers/lag/lag
execute as @e[type=marker,tag=abch_lagMarker,scores={abch_lagTimer=141..}] at @s run function abchc:modifiers/lag/lag


execute as @e[type=marker,tag=abch_lagMarker] at @s run particle happy_villager ~ ~ ~ 0.1 0.1 0.1 1 4 normal