scoreboard players reset @a[ tag=!abch.blacklist, tag=!abch.pacifist.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator  ] abch.mobkill
execute as @a[ tag=!abch.blacklist, tag=!abch.pacifist.blacklist, scores={ abch.mobkill=1.. }, gamemode=!creative, gamemode=!spectator  ] at @s run function abchc:modifiers/pacifist/kill
scoreboard players reset @s abch.mobkill

scoreboard players reset @a[ tag=!abch.blacklist, tag=!abch.pacifist.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator  ] abch.pacifist.kill
execute as @a[ tag=!abch.blacklist, tag=!abch.pacifist.blacklist, scores={ abch.pacifist.kill=1.. }, gamemode=!creative, gamemode=!spectator  ] at @s run function abchc:modifiers/pacifist/kill
scoreboard players reset @s abch.pacifist.kill