scoreboard players reset @a[ tag=abch.blacklist ] abch.no_walk
execute as @a[ tag=!abch.blacklist, scores={ abch.no_walk=1.. } ] at @s run kill @s
scoreboard players reset @s abch.no_walk