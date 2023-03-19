tag @s remove minecraft_but.deadly_colors.red.kill
execute if score gamerule.showDeathMessages minecraft_but.config matches 1 run gamerule showDeathMessages false
execute if score gamerule.showDeathMessages minecraft_but.config matches 1 run tellraw @a[ tag=!minecraft_but.blacklist, tag=!global.ignore ] ["",{"selector":"@s"}," was oversaturated with ",{"text":"red","color":"#ff0000"}]
kill @s
schedule function minecraft_but.coreraft_but.core:modifiers/deadly_colors/death_message 1t