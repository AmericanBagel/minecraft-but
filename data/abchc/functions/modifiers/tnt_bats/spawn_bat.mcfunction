#> abchc:modifiers/tnt_bats/spawn_bat
# Spawn bat on some hostile mobs
# @context hostile mob
# @within abchc:modifiers/tnt_bats/main

summon bat ~ ~ ~ {Tags:["abch.tnt_bats","abch"],Passengers:[{id:"minecraft:tnt",Fuse:12000,Tags:["abch.tnt_bats.tnt"]}]}