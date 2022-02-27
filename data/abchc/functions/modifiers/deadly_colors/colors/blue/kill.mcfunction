tag @s remove abch.deadly_colors.blue.kill
execute if score showDeathMessages abch.config matches 1 run gamerule showDeathMessages false
execute if score showDeathMessages abch.config matches 1 run tellraw @a[tag=!blacklist,tag=!global.ignore] ["",{"selector":"@s"}," was oversaturated with ",{"text":"blue","color":"#0000ff"}]
kill @s
execute if score showDeathMessages abch.config matches 1 run gamerule showDeathMessages true