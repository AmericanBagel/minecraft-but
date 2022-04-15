#> abchc:test
# @this is a test
# @within bruh
# @scopes
# bruh

#> block
setblock ~ ~ ~ diamond_block

#> entity
summon creeper ~ ~ ~ { Fuse: 10, ExplosionRadius: 3b, CustomName:'{"text":"Todd the Creeper"}'}

#> tag
tag @s add todd
tag @e remove tim

#> scoreboard
scoreboard objectives add bobscore health
scoreboard objectives add bobscore air
scoreboard players set enum score 1
scoreboard players set enum1 score 2
scoreboard players set enum2 score -3
scoreboard players operation enum1 score2 = enum2 score3
scoreboard players operation enum1 score2 /= enum2 score3
scoreboard players operation enum1 score2 -= enum2 score3

#> tellraw
tellraw @s [{"text":"this is test"}]

#> function
function abchc:testing2

#>
function namespace.withdot:functiontest

#> tp
# this is a comment
# this is also a comment
# this is also a comment
tp @s ^ ^1 ^
tp @s[tag=bruh] ^5 ^ ^

#> bool
data modify storage selector path set value {bool:false}
data modify storage selector1 path2 set value {bool:true}
data modify entity @e[type=creeper,tag=bruh,scores={score1=1..10,score2=3..4},limit=1] path set from block ~ ~-1 ~ nbt2

data get entity @e[name="bob",limit=1]

execute align xyz run say hi


# this is a comment

# i am a comment too