execute if score gamerule.showDeathMessages abch.config matches 1 run gamerule showDeathMessages false
tag @s add abch.herbivore.death_message
kill @s
schedule function abchc:modifiers/herbivore/death_message 1t append