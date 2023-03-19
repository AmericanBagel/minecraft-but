execute if score gamerule.gamerule.showDeathMessages minecraft_but.config matches 1 run tag @s add minecraft_but.pacifist.death_message
execute if score gamerule.gamerule.showDeathMessages minecraft_but.config matches 1 run schedule function minecraft_but.core:modifiers/pacifist/death_message 1t append
execute if score gamerule.gamerule.showDeathMessages minecraft_but.config matches 1 run gamerule showDeathMessages false
execute if score gamerule.gamerule.showDeathMessages minecraft_but.config matches 1 run kill @s