execute if score showDeathMessages abch.config matches 1 run gamerule showDeathMessages false
execute if score showDeathMessages abch.config matches 1 run tellraw @a ["",{"selector":"@s"}," was covered in red"]
execute if score showDeathMessages abch.config matches 1 run gamerule showDeathMessages true
kill @s