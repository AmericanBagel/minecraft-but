tag @s remove abch.deadly_colors.red.kill
execute if score showDeathMessages abch.config matches 1 run gamerule showDeathMessages false
execute if score showDeathMessages abch.config matches 1 run tellraw @a ["",{"selector":"@s"}," was oversaturated with ",{"text":"red","color":"#ff0000"}]
kill @s
execute if score showDeathMessages abch.config matches 1 run gamerule showDeathMessages true