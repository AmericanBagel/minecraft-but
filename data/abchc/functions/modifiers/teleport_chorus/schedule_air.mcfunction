#> abchc:modifiers/teleport_chorus/schedule_air
# Run find air function after being scheduled
# @context root
# @within abchc:modifiers/teleport_chorus/tp_nether

execute as @a[tag=abch.teleport_chorus.nether] at @s positioned ~ ~-2 ~ run function abchc:modifiers/teleport_chorus/find_air
tag @a remove abch.teleport_chorus.nether