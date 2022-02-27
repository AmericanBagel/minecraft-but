tag @s remove abch.deadly_colors.green.kill
execute if score showDeathMessages abch.config matches 1 run gamerule showDeathMessages false
execute if score showDeathMessages abch.config matches 1 run tellraw @a[tag=!blacklist,tag=!global.ignore] ["",{"selector":"@s"}," was oversaturated with ",{"text":"green","color":"#00ff00"}]
kill @s
execute if score showDeathMessages abch.config matches 1 run gamerule showDeathMessages true