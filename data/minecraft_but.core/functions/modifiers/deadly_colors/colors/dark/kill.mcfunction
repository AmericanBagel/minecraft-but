tag @s remove minecraft_but.deadly_colors.dark.kill
execute if score gamerule.showDeathMessages minecraft_but.config matches 1 run gamerule showDeathMessages false
execute if score gamerule.showDeathMessages minecraft_but.config matches 1 run tellraw @a[ tag=!minecraft_but.blacklist, tag=!global.ignore ] ["",{"selector":"@s"}," was oversaturated with ",{"text":"dark colors","color":"#333333"}]
kill @s
execute if score gamerule.showDeathMessages minecraft_but.config matches 1 run gamerule showDeathMessages true