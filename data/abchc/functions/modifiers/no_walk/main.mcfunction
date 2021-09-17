scoreboard players reset @a[tag=abch_blacklist] abch_walk
execute as @a[tag=!abch_blacklist,scores={abch_walk=1..}] at @s run kill @s
scoreboard players reset @s abch_walk