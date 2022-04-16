scoreboard players reset @a[ tag=abch.blacklist, tag=!abch.no_sneak.blacklist, tag=!global.ignore ] abch.sneak
execute as @a[ tag=!abch.blacklist, tag=!abch.no_sneak.blacklist, tag=!global.ignore, scores={ abch.sneak=1.. } ] at @s run gamerule showDeathMessages false
execute as @a[ tag=!abch.blacklist, tag=!abch.no_sneak.blacklist, tag=!global.ignore, scores={ abch.sneak=1.. } ] at @s run tellraw @a[ tag=!abch.blacklist, tag=!global.ignore ] [{"selector":"@s"},{"text":" sneaked out of this plane of existence."}]
execute as @a[ tag=!abch.blacklist, tag=!abch.no_sneak.blacklist, tag=!global.ignore, scores={ abch.sneak=1.. } ] at @s run kill @s
execute as @a[ tag=!abch.blacklist, tag=!abch.no_sneak.blacklist, tag=!global.ignore, scores={ abch.sneak=1.. } ] at @s run gamerule showDeathMessages true
scoreboard players reset @s abch.sneak