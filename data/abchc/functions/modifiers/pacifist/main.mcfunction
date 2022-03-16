scoreboard players reset @a[ tag=abch.blacklist ] abch.mobkill
execute as @a[ tag=!abch.blacklist, scores={ abch.mobkill=1.. } ] at @s run kill @s
scoreboard players reset @s abch.mobkill

scoreboard players reset @a[ tag=abch.blacklist ] abch.pacifist.kill
execute as @a[ tag=!abch.blacklist, scores={ abch.pacifist.kill=1.. } ] at @s run kill @s
scoreboard players reset @s abch.pacifist.kill