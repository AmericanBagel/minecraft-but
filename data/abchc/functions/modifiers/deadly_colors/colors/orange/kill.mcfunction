tag @s remove abch.deadly_colors.orange.kill
execute if score showDeathMessages abch.config matches 1 run gamerule showDeathMessages false
execute if score showDeathMessages abch.config matches 1 run tellraw @a[tag=!blacklist,tag=!global.ignore] ["",{"selector":"@s"}," was oversaturated with ",{"text":"orange","color":"#ff7700"}]
kill @s
execute if score showDeathMessages abch.config matches 1 run gamerule showDeathMessages true