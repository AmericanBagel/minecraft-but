execute as @a[tag=minecraft_but.carnivore.death_message] at @s run tellraw @a [{"selector":"@s"},{"text":" ate a disgusting vegetable"}]
tag @a[tag=minecraft_but.carnivore.death_message] remove minecraft_but.carnivore.death_message
gamerule sendCommandFeedback true