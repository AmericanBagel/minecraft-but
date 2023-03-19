tag @s remove minecraft_but.deadly_colors.light.kill
execute if score gamerule.showDeathMessages minecraft_but.config matches 1 run gamerule showDeathMessages false
execute if score gamerule.showDeathMessages minecraft_but.config matches 1 run tellraw @a[ tag=!minecraft_but.blacklist, tag=!global.ignore ] ["",{"selector":"@s","color":"#dddddd"},{"text":" was oversaturated with ","color":"#dddddd"},{"text":"bright colors","color":"#ffffff"}]
kill @s
execute if score gamerule.showDeathMessages minecraft_but.config matches 1 run gamerule showDeathMessages true