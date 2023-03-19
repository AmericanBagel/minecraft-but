execute as @a[tag=minecraft_but.herbivore.death_message] at @s run tellraw @a [{"selector":"@s"},{"text":" ate a disgusting vegetable"}]
tag @a[tag=minecraft_but.herbivore.death_message] remove minecraft_but.herbivore.death_message
gamerule sendCommandFeedback true