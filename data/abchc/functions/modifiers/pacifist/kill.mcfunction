execute if score gamerule.gamerule.showDeathMessages abch.config matches 1 run tag @s add abch.pacifist.death_message
execute if score gamerule.gamerule.showDeathMessages abch.config matches 1 run schedule function abchc:modifiers/pacifist/death_message 1t append
execute if score gamerule.gamerule.showDeathMessages abch.config matches 1 run gamerule showDeathMessages false
execute if score gamerule.gamerule.showDeathMessages abch.config matches 1 run kill @s