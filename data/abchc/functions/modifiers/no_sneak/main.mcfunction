scoreboard players reset @a abch.sneak
execute as @a[ tag=!abch.blacklist, tag=!abch.no_sneak.blacklist, tag=!global.ignore, scores={ abch.sneak=1.. }, gamemode=!creative, gamemode=!spectator  ] at @s run gamerule showDeathMessages false
execute as @a[ tag=!abch.blacklist, tag=!abch.no_sneak.blacklist, tag=!global.ignore, scores={ abch.sneak=1.. }, gamemode=!creative, gamemode=!spectator  ] at @s run tellraw @a[ tag=!abch.blacklist, tag=!global.ignore ] [{"selector":"@s"},{"text":" sneaked out of this plane of existence."}]
execute as @a[ tag=!abch.blacklist, tag=!abch.no_sneak.blacklist, tag=!global.ignore, scores={ abch.sneak=1.. }, gamemode=!creative, gamemode=!spectator  ] at @s run kill @s
execute as @a[ tag=!abch.blacklist, tag=!abch.no_sneak.blacklist, tag=!global.ignore, scores={ abch.sneak=1.. }, gamemode=!creative, gamemode=!spectator  ] at @s run gamerule showDeathMessages true
scoreboard players reset @a abch.sneak