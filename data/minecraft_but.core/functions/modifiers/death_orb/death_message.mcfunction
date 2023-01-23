execute if score gamerule.showDeathMessages minecraft_but.config matches 1 run tellraw @a ["",{"selector":"@s"}," glimpsed the eternal void"]
execute if score gamerule.showDeathMessages minecraft_but.config matches 1 run gamerule showDeathMessages true
tag @s remove minecraft_but.death_orb.death