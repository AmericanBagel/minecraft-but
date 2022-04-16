scoreboard players reset @a[ tag=!abch.blacklist, tag=!abch.pacifist.blacklist, tag=!global.ignore ] abch.mobkill
execute as @a[ tag=!abch.blacklist, tag=!abch.pacifist.blacklist, scores={ abch.mobkill=1.. } ] at @s run function abchc:modifiers/pacifist/kill
scoreboard players reset @s abch.mobkill

scoreboard players reset @a[ tag=!abch.blacklist, tag=!abch.pacifist.blacklist, tag=!global.ignore ] abch.pacifist.kill
execute as @a[ tag=!abch.blacklist, tag=!abch.pacifist.blacklist, scores={ abch.pacifist.kill=1.. } ] at @s run function abchc:modifiers/pacifist/kill
scoreboard players reset @s abch.pacifist.kill