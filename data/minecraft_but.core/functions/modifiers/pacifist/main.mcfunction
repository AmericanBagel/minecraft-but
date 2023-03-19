scoreboard players reset @a[ tag=!minecraft_but.blacklist, tag=!minecraft_but.pacifist.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator  ] minecraft_but.mobkill
execute as @a[ tag=!minecraft_but.blacklist, tag=!minecraft_but.pacifist.blacklist, scores={ minecraft_but.mobkill=1.. }, gamemode=!creative, gamemode=!spectminecraft_but.core ] at @s run function minecraft_but.core:modifiers/pacifist/kill
scoreboard players reset @s minecraft_but.mobkill

scoreboard players reset @a[ tag=!minecraft_but.blacklist, tag=!minecraft_but.pacifist.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator  ] minecraft_but.pacifist.kill
execute as @a[ tag=!minecraft_but.blacklist, tag=!minecraft_but.pacifist.blacklist, scores={ minecraft_but.pacifist.kill=1.. }, gamemode=!creative, gamemode=!spectminecraft_but.core ] at @s run function minecraft_but.core:modifiers/pacifist/kill
scoreboard players reset @s minecraft_but.pacifist.kill