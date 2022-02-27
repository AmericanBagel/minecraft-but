tag @s remove abch.deadly_colors.light.kill
execute if score showDeathMessages abch.config matches 1 run gamerule showDeathMessages false
execute if score showDeathMessages abch.config matches 1 run tellraw @a[ tag=!blacklist, tag=!global.ignore ] ["",{"selector":"@s","color":"#dddddd"},{"text":" was oversaturated with ","color":"#dddddd"},{"text":"bright colors","color":"#ffffff"}]
kill @s
execute if score showDeathMessages abch.config matches 1 run gamerule showDeathMessages true