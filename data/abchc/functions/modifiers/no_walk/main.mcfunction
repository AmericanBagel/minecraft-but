scoreboard players reset @a[ tag=abch.blacklist, tag=!abch.no_walk.blacklist, tag=!global.ignore ] abch.no_walk
execute as @a[ tag=!abch.blacklist, tag=!abch.no_walk.blacklist, tag=!global.ignore, scores={ abch.no_walk=1.. } ] at @s run kill @s
scoreboard players reset @s abch.no_walk