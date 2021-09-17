tag @s remove abch_eeMExists
execute at @e[type=egg] if score @s abch_eeUUID1 = @e[type=egg,limit=1,sort=nearest] abch_eeUUID1 if score @s abch_eeUUID2 = @e[type=egg,limit=1,sort=nearest] abch_eeUUID2 if score @s abch_eeUUID3 = @e[type=egg,limit=1,sort=nearest] abch_eeUUID3 if score @s abch_eeUUID4 = @e[type=egg,limit=1,sort=nearest] abch_eeUUID4 run tp @s ~ ~ ~
execute at @e[type=egg] if score @s abch_eeUUID1 = @e[type=egg,limit=1,sort=nearest] abch_eeUUID1 if score @s abch_eeUUID2 = @e[type=egg,limit=1,sort=nearest] abch_eeUUID2 if score @s abch_eeUUID3 = @e[type=egg,limit=1,sort=nearest] abch_eeUUID3 if score @s abch_eeUUID4 = @e[type=egg,limit=1,sort=nearest] abch_eeUUID4 run tag @s add abch_eeMExists

execute unless entity @s[tag=abch_eeMExists] run summon creeper ~ ~ ~ {Fuse:0s,ignited:1b}
execute unless entity @s[tag=abch_eeMExists] run effect give @e[type=chicken,nbt={Age:-24000}] resistance 1 255 true
execute unless entity @s[tag=abch_eeMExists] run kill @s