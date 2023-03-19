#> minecraft_but.core:modifiers/lightning_storm/main
# Main function for "Lightning Storm" modifier
# Spawn lightning around players
# @within minecraft_but.core:modifiers/directory
# @context root
# @input
#   score lightning_storm.times minecraft_but.config
#       How many times per second to spawn lightning
# @output
#   score $interval minecraft_but.lightning
#       Interval for spawning lightning

#> Get interval
# Get times config as divisor (e.g. 3)
scoreboard players operation #divisor minecraft_but.lightning = lightning_storm.times minecraft_but.config
# Set interval to 20
scoreboard players operation $interval minecraft_but.lightning = #20 minecraft_but.math
# Divide 20 by divisor (e.g. 20 / 3 = 6)
scoreboard players operation $interval minecraft_but.lightning /= #divisor minecraft_but.lightning

#> Spawning
# Increase players' lightning timer score by 1
scoreboard players add @a minecraft_but.lightning 1

# Spawn lightning marker
execute as @a at @s if score @s minecraft_but.lightning >= $interval minecraft_but.lightning run function minecraft_but.core:modifiers/lightning_storm/spawner

# After one second, spawn lightning and kill lightning marker
execute as @e[ type=marker, name="minecraft_but.lightning", tag=!minecraft_but.blacklist, tag=!minecraft_but.lightning_storm.blacklist ] at @s if score @s minecraft_but.lightning matches 20.. run function minecraft_but.core:modifiers/lightning_storm/lightning

#> Lightning warning effects
scoreboard players add @e[ type=marker, name="minecraft_but.lightning", tag=!minecraft_but.blacklist, tag=!minecraft_but.lightning_storm.blacklist ] minecraft_but.lightning 1

execute as @e[ type=marker, name="minecraft_but.lightning", tag=!minecraft_but.blacklist, tag=!minecraft_but.lightning_storm.blacklist ] at @s if score @s minecraft_but.lightning matches 1..2 run particle minecraft:electric_spark ~ ~ ~ .2 0 .2 .1 1 force
execute as @e[ type=marker, name="minecraft_but.lightning", tag=!minecraft_but.blacklist, tag=!minecraft_but.lightning_storm.blacklist ] at @s if score @s minecraft_but.lightning matches 3..4 run particle minecraft:electric_spark ~ ~ ~ .25 .025 .25 .2 2 force
execute as @e[ type=marker, name="minecraft_but.lightning", tag=!minecraft_but.blacklist, tag=!minecraft_but.lightning_storm.blacklist ] at @s if score @s minecraft_but.lightning matches 5..6 run particle minecraft:electric_spark ~ ~ ~ .3 .05 .3 .3 3 force
execute as @e[ type=marker, name="minecraft_but.lightning", tag=!minecraft_but.blacklist, tag=!minecraft_but.lightning_storm.blacklist ] at @s if score @s minecraft_but.lightning matches 7..8 run particle minecraft:electric_spark ~ ~ ~ .35 .75 .35 .4 4 force
execute as @e[ type=marker, name="minecraft_but.lightning", tag=!minecraft_but.blacklist, tag=!minecraft_but.lightning_storm.blacklist ] at @s if score @s minecraft_but.lightning matches 9..10 run particle minecraft:electric_spark ~ ~ ~ .4 .1 .4 .5 5 force
execute as @e[ type=marker, name="minecraft_but.lightning", tag=!minecraft_but.blacklist, tag=!minecraft_but.lightning_storm.blacklist ] at @s if score @s minecraft_but.lightning matches 11..12 run particle minecraft:electric_spark ~ ~ ~ .45 .125 .45 .6 6 force
execute as @e[ type=marker, name="minecraft_but.lightning", tag=!minecraft_but.blacklist, tag=!minecraft_but.lightning_storm.blacklist ] at @s if score @s minecraft_but.lightning matches 13..14 run particle minecraft:electric_spark ~ ~ ~ .5 .15 .5 .7 7 force
execute as @e[ type=marker, name="minecraft_but.lightning", tag=!minecraft_but.blacklist, tag=!minecraft_but.lightning_storm.blacklist ] at @s if score @s minecraft_but.lightning matches 15..16 run particle minecraft:electric_spark ~ ~ ~ .55 .175 .55 .8 8 force
execute as @e[ type=marker, name="minecraft_but.lightning", tag=!minecraft_but.blacklist, tag=!minecraft_but.lightning_storm.blacklist ] at @s if score @s minecraft_but.lightning matches 17..18 run particle minecraft:electric_spark ~ ~ ~ .65 .2 .65 .9 9 force
execute as @e[ type=marker, name="minecraft_but.lightning", tag=!minecraft_but.blacklist, tag=!minecraft_but.lightning_storm.blacklist ] at @s if score @s minecraft_but.lightning matches 19..20 run particle minecraft:electric_spark ~ ~ ~ .7 .225 .7 1 10 force

execute as @e[ type=marker, name="minecraft_but.lightning", tag=!minecraft_but.blacklist, tag=!minecraft_but.lightning_storm.blacklist ] at @s if score @s minecraft_but.lightning matches 1..2 run particle minecraft:end_rod ~ ~ ~ .2 0 .2 .002 1 normal
execute as @e[ type=marker, name="minecraft_but.lightning", tag=!minecraft_but.blacklist, tag=!minecraft_but.lightning_storm.blacklist ] at @s if score @s minecraft_but.lightning matches 3..4 run particle minecraft:end_rod ~ ~ ~ .25 .025 .002 .3 1 normal
execute as @e[ type=marker, name="minecraft_but.lightning", tag=!minecraft_but.blacklist, tag=!minecraft_but.lightning_storm.blacklist ] at @s if score @s minecraft_but.lightning matches 5..6 run particle minecraft:end_rod ~ ~ ~ .3 .05 .3 .005 1 normal
execute as @e[ type=marker, name="minecraft_but.lightning", tag=!minecraft_but.blacklist, tag=!minecraft_but.lightning_storm.blacklist ] at @s if score @s minecraft_but.lightning matches 7..8 run particle minecraft:end_rod ~ ~ ~ .35 .75 .35 .01 1 normal
execute as @e[ type=marker, name="minecraft_but.lightning", tag=!minecraft_but.blacklist, tag=!minecraft_but.lightning_storm.blacklist ] at @s if score @s minecraft_but.lightning matches 9..10 run particle minecraft:end_rod ~ ~ ~ .4 .1 .4 .025 1 normal
execute as @e[ type=marker, name="minecraft_but.lightning", tag=!minecraft_but.blacklist, tag=!minecraft_but.lightning_storm.blacklist ] at @s if score @s minecraft_but.lightning matches 11..12 run particle minecraft:end_rod ~ ~ ~ .45 .125 .45 .05 2 normal
execute as @e[ type=marker, name="minecraft_but.lightning", tag=!minecraft_but.blacklist, tag=!minecraft_but.lightning_storm.blacklist ] at @s if score @s minecraft_but.lightning matches 13..14 run particle minecraft:end_rod ~ ~ ~ .5 .15 .5 .1 2 normal
execute as @e[ type=marker, name="minecraft_but.lightning", tag=!minecraft_but.blacklist, tag=!minecraft_but.lightning_storm.blacklist ] at @s if score @s minecraft_but.lightning matches 15..16 run particle minecraft:end_rod ~ ~ ~ .55 .175 .55 .2 3 normal
execute as @e[ type=marker, name="minecraft_but.lightning", tag=!minecraft_but.blacklist, tag=!minecraft_but.lightning_storm.blacklist ] at @s if score @s minecraft_but.lightning matches 17..18 run particle minecraft:end_rod ~ ~ ~ .65 .2 .65 .3 4 normal
execute as @e[ type=marker, name="minecraft_but.lightning", tag=!minecraft_but.blacklist, tag=!minecraft_but.lightning_storm.blacklist ] at @s if score @s minecraft_but.lightning matches 19..20 run particle minecraft:end_rod ~ ~ ~ .7 .225 .7 .35 6 normal


execute as @e[ type=marker, name="minecraft_but.lightning", tag=!minecraft_but.blacklist, tag=!minecraft_but.lightning_storm.blacklist ] at @s if score @s minecraft_but.lightning matches 19..20 run particle minecraft:flash ~ ~ ~ 0 0 0 1 2 normal

# Times per 5 seconds:
# 20 ticks in 1 second
# 5 times per 1 second
# output = 4
# After 4.., spawn lightning

weather thunder 3