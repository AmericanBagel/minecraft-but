data merge entity @s {CustomPotionEffects:[{Id:32b,Amplifier:1b,Duration:20}]}

scoreboard players set $min random 1 
scoreboard players set $max random 33
function random:uniform
execute store result entity @s CustomPotionEffects[0].Id byte 1 run scoreboard players get $out random
tellraw @a ["Id: ",{"score":{"objective": "minecraft_but.rng.math","name": "out"}}]


scoreboard players set $min random 1
scoreboard players set $max random 5
function random:uniform
execute store result entity @s CustomPotionEffects[0].Amplifier byte 1 run scoreboard players get $out random
tellraw @a ["Amplifier: ",{"score":{"objective": "minecraft_but.rng.math","name": "out"}}]

scoreboard players set $min random 1
scoreboard players set $max random 10
function random:uniform
execute store result entity @s CustomPotionEffects[0].Duration byte 1 run scoreboard players get $out random
tellraw @a ["Duration: ",{"score":{"objective": "minecraft_but.rng.math","name": "out"}}]

##data modify entity @s CustomPotionEffects[0].Id set value 10
##data modify entity @s CustomPotionEffects[0].Amplifier set value 10b
##data modify entity @s CustomPotionEffects[0].Duration set value 30
##
##data modify entity @s pickup set value 0b
##
tag @s add minecraft_but.effect_arrows

tellraw @a {"nbt":"CustomPotionEffects[0]","entity":"@s"}

##data modify storage minecraft_but.coreraft_but.core:effect_arrows CustomPotionEffects set value [{Id:32b,Amplifier:1b,Duration:20}]
##
##data modify storage minecraft_but.coreraft_but.core:effect_arrows CustomPotionEffects[0].Id set value 10
##data modify storage minecraft_but.coreraft_but.core:effect_arrows CustomPotionEffects[0].Amplifier set value 10b
##data modify storage minecraft_but.coreraft_but.core:effect_arrows CustomPotionEffects[0].Duration set value 30
##
##data modify entity @s CustomPotionEffects[0] set from storage minecraft_but.coreraft_but.core:effect_arrows CustomPotionEffects[0]