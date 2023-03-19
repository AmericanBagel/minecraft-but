execute if score gamerule.gamerule.showDeathMessages minecraft_but.config matches 1 run gamerule showDeathMessages false
tag @s add minecraft_but.carnivore.death_message
kill @s
schedule function minecraft_but.coreraft_but.core:modifiers/carnivore/death_message 1t append