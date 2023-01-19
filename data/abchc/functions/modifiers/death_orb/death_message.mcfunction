execute if score gamerule.showDeathMessages abch.config matches 1 run tellraw @a ["",{"selector":"@s"}," glimpsed the eternal void"]
execute if score gamerule.showDeathMessages abch.config matches 1 run gamerule showDeathMessages true
tag @s remove abch.death_orb.death