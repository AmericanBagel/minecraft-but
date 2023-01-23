execute as @a[ tag=!minecraft_but.blacklist, tag=!global.ignore, tag=!minecraft_but.superhot.blacklist, gamemode=!creative, gamemode=!spectator ] run function minecraft_but.core:modifiers/superhot/update_motion
execute as @a[ tag=!minecraft_but.blacklist, tag=!global.ignore, tag=!minecraft_but.superhot.blacklist, gamemode=!creative, gamemode=!spectator ] at @s run function minecraft_but.core:modifiers/superhot/check


execute as @a[ tag=!minecraft_but.blacklist, tag=!global.ignore, tag=!minecraft_but.superhot.blacklist, gamemode=!creative, gamemode=!spectator ] at @s run function minecraft_but.core:modifiers/superhot/update_motion2