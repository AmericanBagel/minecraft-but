#> abchc:modifiers/random_teleport/tp/schedule_air
# Run find air function after being scheduled
# @context root
# @within abchc:modifiers/random_teleport/tp/tp_nether

execute as @a[tag=abch.random_teleport.nether] at @s positioned ~ ~-2 ~ run function abchc:modifiers/random_teleport/tp/find_air
tag @a remove abch.random_teleport.nether