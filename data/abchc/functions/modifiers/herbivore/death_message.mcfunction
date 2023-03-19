execute as @a[tag=abch.herbivore.death_message] at @s run tellraw @a [{"selector":"@s"},{"text":" ate a disgusting vegetable"}]
tag @a[tag=abch.herbivore.death_message] remove abch.herbivore.death_message
gamerule sendCommandFeedback true