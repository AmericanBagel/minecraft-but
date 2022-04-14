#> abchc:modifiers/fast_arrows/velocity
# Speed up arrows' velocity
#
# Credit to vdvman1 for velocity max commands
# https://discord.com/channels/154777837382008833/157097006500806656/509111785715138570
# on the Minecraft Commands discord
#
# @within abchc:modifiers/fast_arrows/main
# @context

data modify entity @s NoGravity set value 1b

execute store result score $x abch.fast_arrows run data get entity @s Motion[0] 100
scoreboard players operation $max abch.fast_arrows = $x abch.fast_arrows
execute if score $x abch.fast_arrows matches ..-1 run scoreboard players operation $max abch.fast_arrows *= #-1 abch.math
execute store result score $y abch.fast_arrows run data get entity @s Motion[1] 100
scoreboard players operation $temp abch.fast_arrows = $y abch.fast_arrows
execute if score $temp abch.fast_arrows matches ..-1 run scoreboard players operation $temp abch.fast_arrows *= #-1 abch.math
scoreboard players operation $max abch.fast_arrows > $temp abch.fast_arrows
execute store result score $z abch.fast_arrows run data get entity @s Motion[2] 100
scoreboard players operation $temp abch.fast_arrows = $z abch.fast_arrows
execute if score $temp abch.fast_arrows matches ..-1 run scoreboard players operation $temp abch.fast_arrows *= #-1 abch.math
scoreboard players operation $max abch.fast_arrows > $temp abch.fast_arrows
# max out motion
scoreboard players set $scale abch.fast_arrows 1000
scoreboard players operation $scale abch.fast_arrows /= $max abch.fast_arrows
scoreboard players operation $x abch.fast_arrows *= $scale abch.fast_arrows
scoreboard players operation $y abch.fast_arrows *= $scale abch.fast_arrows
scoreboard players operation $z abch.fast_arrows *= $scale abch.fast_arrows
execute store result entity @s Motion[0] double 0.01 run scoreboard players get $x abch.fast_arrows
execute store result entity @s Motion[1] double 0.01 run scoreboard players get $y abch.fast_arrows
execute store result entity @s Motion[2] double 0.01 run scoreboard players get $z abch.fast_arrows

tag @s add abch.fast_arrows