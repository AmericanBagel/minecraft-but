execute as @a[ tag=!minecraft_but.blacklist, scores={ minecraft_but.damage_nausea=1.. }, tag=!minecraft_but.damage_nausea.blacklist, gamemode=!creative, gamemode=!spectator  ] run effect give @s nausea 3 0 true
scoreboard players reset @a[ tag=!minecraft_but.blacklist, tag=!global.ignore, tag=!minecraft_but.damage_nausea.blacklist, gamemode=!creative, gamemode=!spectator  ] minecraft_but.damage_nausea