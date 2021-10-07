tag @s remove abch.eeMExists
execute at @e[type=egg] if score @s abch.eeUUID1 = @e[type=egg,limit=1,sort=nearest] abch.eeUUID1 if score @s abch.eeUUID2 = @e[type=egg,limit=1,sort=nearest] abch.eeUUID2 if score @s abch.eeUUID3 = @e[type=egg,limit=1,sort=nearest] abch.eeUUID3 if score @s abch.eeUUID4 = @e[type=egg,limit=1,sort=nearest] abch.eeUUID4 run tp @s ~ ~ ~
execute at @e[type=egg] if score @s abch.eeUUID1 = @e[type=egg,limit=1,sort=nearest] abch.eeUUID1 if score @s abch.eeUUID2 = @e[type=egg,limit=1,sort=nearest] abch.eeUUID2 if score @s abch.eeUUID3 = @e[type=egg,limit=1,sort=nearest] abch.eeUUID3 if score @s abch.eeUUID4 = @e[type=egg,limit=1,sort=nearest] abch.eeUUID4 run tag @s add abch.eeMExists

execute unless entity @s[tag=abch.eeMExists] run summon creeper ~ ~ ~ {Fuse:0s,ignited:1b}
execute unless entity @s[tag=abch.eeMExists] run effect give @e[type=chicken,nbt={Age:-24000}] resistance 1 255 true
execute unless entity @s[tag=abch.eeMExists] run kill @s