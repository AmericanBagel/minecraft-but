scoreboard players reset @a[tag=abch.blacklist] abch.walk
execute as @a[tag=!abch.blacklist,scores={abch.walk=1..}] at @s run kill @s
scoreboard players reset @s abch.walk