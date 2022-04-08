execute if score gamerule.showDeathMessages abch.config matches 1 run scoreboard players set gamerule.showDeathMessages abch.config 0
execute if score gamerule.showDeathMessages abch.config matches 1 run tag @s add abch.toxic_water.death_message
execute if score gamerule.showDeathMessages abch.config matches 1 run schedule function abchc:modifiers/toxic_water/death_message 1t
kill @s