execute as @a[ tag=!abch.blacklist, tag=!global.ignore, tag=!abch.superhot.blacklist, gamemode=!creative, gamemode=!spectator ] run function abchc:modifiers/superhot/update_motion
execute as @a[ tag=!abch.blacklist, tag=!global.ignore, tag=!abch.superhot.blacklist, gamemode=!creative, gamemode=!spectator ] at @s run function abchc:modifiers/superhot/check


execute as @a[ tag=!abch.blacklist, tag=!global.ignore, tag=!abch.superhot.blacklist, gamemode=!creative, gamemode=!spectator ] at @s run function abchc:modifiers/superhot/update_motion2