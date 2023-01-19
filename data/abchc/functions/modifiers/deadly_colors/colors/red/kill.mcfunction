tag @s remove abch.deadly_colors.red.kill
execute if score gamerule.showDeathMessages abch.config matches 1 run gamerule showDeathMessages false
execute if score gamerule.showDeathMessages abch.config matches 1 run tellraw @a[ tag=!abch.blacklist, tag=!global.ignore ] ["",{"selector":"@s"}," was oversaturated with ",{"text":"red","color":"#ff0000"}]
kill @s
schedule function abchc:modifiers/deadly_colors/death_message 1t