#> minecraft_but.core:modifiers/tnt_bats/replace_bat
# Replace vanilla bats with bat-riding TNT
# @context vanilla bat
# @within minecraft_but.core:modifiers/tnt_bats/main
summon bat ~ ~ ~ {Tags:["minecraft_but.tnt_bats","minecraft_but"],Passengers:[{id:"minecraft:tnt",Fuse:12000,Tags:["minecraft_but.tnt_bats.tnt"]}]}
tp @s ~ -1000 ~