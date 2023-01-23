scoreboard players reset @a[ tag=minecraft_but.blacklist, tag=!minecraft_but.no_walk.blacklist, tag=!global.ignore ] minecraft_but.no_walk
execute as @a[ tag=!minecraft_but.blacklist, tag=!minecraft_but.no_walk.blacklist, tag=!global.ignore, scores={ minecraft_but.no_walk=1.. } ] at @s run kill @s
scoreboard players reset @s minecraft_but.no_walk