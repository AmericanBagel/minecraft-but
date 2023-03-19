tag @s remove minecraft_but.deadly_colors.green.kill
execute if score gamerule.showDeathMessages minecraft_but.config matches 1 run gamerule showDeathMessages false
execute if score gamerule.showDeathMessages minecraft_but.config matches 1 run tellraw @a[ tag=!minecraft_but.blacklist, tag=!global.ignore ] ["",{"selector":"@s"}," was oversaturated with ",{"text":"green","color":"#00ff00"}]
kill @s
execute if score gamerule.showDeathMessages minecraft_but.config matches 1 run gamerule showDeathMessages true