tag @s remove abch.deadly_colors.yellow.kill
execute if score showDeathMessages abch.config matches 1 run gamerule showDeathMessages false
execute if score showDeathMessages abch.config matches 1 run tellraw @a ["",{"selector":"@s"}," was oversaturated with ",{"text":"yellow","color":"#ffff00"}]
kill @s
execute if score showDeathMessages abch.config matches 1 run gamerule showDeathMessages true