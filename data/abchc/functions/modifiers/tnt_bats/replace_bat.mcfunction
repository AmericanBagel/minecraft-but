#> abchc:modifiers/tnt_bats/replace_bat
# Replace vanilla bats with bat-riding TNT
# @context vanilla bat
# @within abchc:modifiers/tnt_bats/main
summon bat ~ ~ ~ {Tags:["abch.tnt_bats","abch"],Passengers:[{id:"minecraft:tnt",Fuse:12000,Tags:["abch.tnt_bats.tnt"]}]}
tp @s ~ -1000 ~