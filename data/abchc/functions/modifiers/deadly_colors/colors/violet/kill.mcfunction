tag @s remove abch.deadly_colors.violet.kill
execute if score showDeathMessages abch.config matches 1 run gamerule showDeathMessages false
execute if score showDeathMessages abch.config matches 1 run tellraw @a[ tag=!abch.blacklist, tag=!global.ignore ] ["",{"selector":"@s"}," was oversaturated with ",{"text":"violet","color":"#9900ff"}]
kill @s
execute if score showDeathMessages abch.config matches 1 run gamerule showDeathMessages true