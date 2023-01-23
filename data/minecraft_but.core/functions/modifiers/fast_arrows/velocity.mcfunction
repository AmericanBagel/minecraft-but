#> minecraft_but.core:modifiers/fast_arrows/velocity
# Speed up arrows' velocity
#
# Credit to vdvman1 for velocity max commands
# https://discord.com/channels/154777837382008833/157097006500806656/509111785715138570
# on the Minecraft Commands discord
#
# @within minecraft_but.core:modifiers/fast_arrows/main
# @context

data modify entity @s NoGravity set value 1b

execute store result score $x minecraft_but.fast_arrows run data get entity @s Motion[0] 100
scoreboard players operation $max minecraft_but.fast_arrows = $x minecraft_but.fast_arrows
execute if score $x minecraft_but.fast_arrows matches ..-1 run scoreboard players operation $max minecraft_but.fast_arrows *= #-1 minecraft_but.math
execute store result score $y minecraft_but.fast_arrows run data get entity @s Motion[1] 100
scoreboard players operation $temp minecraft_but.fast_arrows = $y minecraft_but.fast_arrows
execute if score $temp minecraft_but.fast_arrows matches ..-1 run scoreboard players operation $temp minecraft_but.fast_arrows *= #-1 minecraft_but.math
scoreboard players operation $max minecraft_but.fast_arrows > $temp minecraft_but.fast_arrows
execute store result score $z minecraft_but.fast_arrows run data get entity @s Motion[2] 100
scoreboard players operation $temp minecraft_but.fast_arrows = $z minecraft_but.fast_arrows
execute if score $temp minecraft_but.fast_arrows matches ..-1 run scoreboard players operation $temp minecraft_but.fast_arrows *= #-1 minecraft_but.math
scoreboard players operation $max minecraft_but.fast_arrows > $temp minecraft_but.fast_arrows
# max out motion
scoreboard players set $scale minecraft_but.fast_arrows 1000
scoreboard players operation $scale minecraft_but.fast_arrows /= $max minecraft_but.fast_arrows
scoreboard players operation $x minecraft_but.fast_arrows *= $scale minecraft_but.fast_arrows
scoreboard players operation $y minecraft_but.fast_arrows *= $scale minecraft_but.fast_arrows
scoreboard players operation $z minecraft_but.fast_arrows *= $scale minecraft_but.fast_arrows
execute store result entity @s Motion[0] double 0.01 run scoreboard players get $x minecraft_but.fast_arrows
execute store result entity @s Motion[1] double 0.01 run scoreboard players get $y minecraft_but.fast_arrows
execute store result entity @s Motion[2] double 0.01 run scoreboard players get $z minecraft_but.fast_arrows

tag @s add minecraft_but.fast_arrows