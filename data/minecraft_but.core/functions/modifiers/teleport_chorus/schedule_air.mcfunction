#> minecraft_but.coreraft_but.core:modifiers/teleport_chorus/schedule_air
# Run find air function after being scheduled
# @context root
# @within minecraft_but.coreraft_but.core:modifiers/teleport_chorus/tp_nether

execute as @a[tag=minecraft_but.teleport_chorus.nether] at @s positioned ~ ~-2 ~ run minecraft_but.coreion minecraft_but.core:modifiers/teleport_chorus/find_air
tag @a remove minecraft_but.teleport_chorus.nether