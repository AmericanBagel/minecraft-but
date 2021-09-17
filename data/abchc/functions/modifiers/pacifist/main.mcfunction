scoreboard players reset @a[tag=abch_blacklist] abch_mobkill
execute as @a[tag=!abch_blacklist,scores={abch_mobkill=1..}] at @s run kill @s
scoreboard players reset @s abch_mobkill

scoreboard players reset @a[tag=abch_blacklist] abch_pkill
execute as @a[tag=!abch_blacklist,scores={abch_pkill=1..}] at @s run kill @s
scoreboard players reset @s abch_pkill