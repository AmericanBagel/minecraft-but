gamerule showDeathMessages false
tellraw @a[ tag=!minecraft_but.blacklist, tag=!global.ignore ] [{"selector":"@s"},{"text":" fell from a high place."}]
kill @s
advancement revoke @s only minecraft_but.core:fall_dmg
execute if score gamerule.showDeathMessages minecraft_but.config matches 1 run gamerule showDeathMessages true
scoreboard players reset @a[ tag=!minecraft_but.blacklist, tag=!minecraft_but.deadly_falls.blacklist, tag=!global.ignore ] minecraft_but.deadly_falls