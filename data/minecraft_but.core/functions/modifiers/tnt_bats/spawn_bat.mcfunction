#> minecraft_but.core:modifiers/tnt_bats/spawn_bat
# Spawn bat on some hostile mobs
# @context hostile mob
# @within minecraft_but.core:modifiers/tnt_bats/main

summon bat ~ ~ ~ {Tags:["minecraft_but.tnt_bats","minecraft_but"],Passengers:[{id:"minecraft:tnt",Fuse:12000,Tags:["minecraft_but.tnt_bats.tnt"]}]}