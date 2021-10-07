execute as @e[type=armor_stand,name="abch.lightning"] at @s if score @s abch.lightning matches 20.. run function abchc:modifiers/lightning_storm/lightning

scoreboard players add @e[type=armor_stand,name="abch.lightning"] abch.lightning 1

execute as @e[type=armor_stand,name="abch.lightning"] at @s if score @s abch.lightning matches 1..2 run particle minecraft:electric_spark ~ ~ ~ .2 0 .2 .1 1 normal
execute as @e[type=armor_stand,name="abch.lightning"] at @s if score @s abch.lightning matches 3..4 run particle minecraft:electric_spark ~ ~ ~ .25 .025 .25 .2 2 normal
execute as @e[type=armor_stand,name="abch.lightning"] at @s if score @s abch.lightning matches 5..6 run particle minecraft:electric_spark ~ ~ ~ .3 .05 .3 .3 3 normal
execute as @e[type=armor_stand,name="abch.lightning"] at @s if score @s abch.lightning matches 7..8 run particle minecraft:electric_spark ~ ~ ~ .35 .75 .35 .4 4 normal
execute as @e[type=armor_stand,name="abch.lightning"] at @s if score @s abch.lightning matches 9..10 run particle minecraft:electric_spark ~ ~ ~ .4 .1 .4 .5 5 normal
execute as @e[type=armor_stand,name="abch.lightning"] at @s if score @s abch.lightning matches 11..12 run particle minecraft:electric_spark ~ ~ ~ .45 .125 .45 .6 6 normal
execute as @e[type=armor_stand,name="abch.lightning"] at @s if score @s abch.lightning matches 13..14 run particle minecraft:electric_spark ~ ~ ~ .5 .15 .5 .7 7 normal
execute as @e[type=armor_stand,name="abch.lightning"] at @s if score @s abch.lightning matches 15..16 run particle minecraft:electric_spark ~ ~ ~ .55 .175 .55 .8 8 normal
execute as @e[type=armor_stand,name="abch.lightning"] at @s if score @s abch.lightning matches 17..18 run particle minecraft:electric_spark ~ ~ ~ .65 .2 .65 .9 9 normal
execute as @e[type=armor_stand,name="abch.lightning"] at @s if score @s abch.lightning matches 19..20 run particle minecraft:electric_spark ~ ~ ~ .7 .225 .7 1 10 normal

weather thunder 3