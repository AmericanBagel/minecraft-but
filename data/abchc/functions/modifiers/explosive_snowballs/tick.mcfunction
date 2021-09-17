tag @s remove abch_esMExists
execute at @e[type=snowball] if score @s abch_esUUID1 = @e[type=snowball,limit=1,sort=nearest] abch_esUUID1 if score @s abch_esUUID2 = @e[type=snowball,limit=1,sort=nearest] abch_esUUID2 if score @s abch_esUUID3 = @e[type=snowball,limit=1,sort=nearest] abch_esUUID3 if score @s abch_esUUID4 = @e[type=snowball,limit=1,sort=nearest] abch_esUUID4 run tp @s ~ ~ ~
execute at @e[type=snowball] if score @s abch_esUUID1 = @e[type=snowball,limit=1,sort=nearest] abch_esUUID1 if score @s abch_esUUID2 = @e[type=snowball,limit=1,sort=nearest] abch_esUUID2 if score @s abch_esUUID3 = @e[type=snowball,limit=1,sort=nearest] abch_esUUID3 if score @s abch_esUUID4 = @e[type=snowball,limit=1,sort=nearest] abch_esUUID4 run tag @s add abch_esMExists

execute unless entity @s[tag=abch_esMExists] run summon creeper ~ ~ ~ {Fuse:0s,ignited:1b}
execute unless entity @s[tag=abch_esMExists] run kill @s