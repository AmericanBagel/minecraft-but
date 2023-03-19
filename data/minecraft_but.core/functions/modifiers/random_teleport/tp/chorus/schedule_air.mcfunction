#> minecraft_but.coreraft_but.core:modifiers/random_teleport/tp/schedule_air
# Run find air function after being scheduled
# @context root
# @within minecraft_but.coreraft_but.core:modifiers/random_teleport/tp/tp_nether

execute as @a[tag=minecraft_but.random_teleport.nether] at @s positioned ~ ~-2 ~ run minecraft_but.coreion minecraft_but.core:modifiers/random_teleport/tp/find_air
tag @a remove minecraft_but.random_teleport.nether