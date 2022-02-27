tag @s remove abch.deadly_colors.dark.kill
execute if score showDeathMessages abch.config matches 1 run gamerule showDeathMessages false
execute if score showDeathMessages abch.config matches 1 run tellraw @a[tag=!blacklist,tag=!global.ignore] ["",{"selector":"@s"}," was oversaturated with ",{"text":"dark colors","color":"#333333"}]
kill @s
execute if score showDeathMessages abch.config matches 1 run gamerule showDeathMessages true