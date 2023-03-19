gamerule showDeathMessages false
tellraw @a[ tag=!abch.blacklist, tag=!global.ignore ] [{"selector":"@s"},{"text":" fell from a high place."}]
kill @s
advancement revoke @s only abchc:fall_dmg
execute if score gamerule.showDeathMessages abch.config matches 1 run gamerule showDeathMessages true
scoreboard players reset @a[ tag=!abch.blacklist, tag=!abch.deadly_falls.blacklist, tag=!global.ignore ] abch.deadly_falls