execute as @a[tag=abch.carnivore.death_message] at @s run tellraw @a [{"selector":"@s"},{"text":" ate a disgusting vegetable"}]
tag @a[tag=abch.carnivore.death_message] remove abch.carnivore.death_message
gamerule sendCommandFeedback true