tag @s remove abch.deadly_colors.orange.kill
execute if score gamerule.showDeathMessages abch.config matches 1 run gamerule showDeathMessages false
execute if score gamerule.showDeathMessages abch.config matches 1 run tellraw @a[ tag=!abch.blacklist, tag=!global.ignore ] ["",{"selector":"@s"}," was oversaturated with ",{"text":"orange","color":"#ff7700"}]
kill @s
execute if score gamerule.showDeathMessages abch.config matches 1 run gamerule showDeathMessages true