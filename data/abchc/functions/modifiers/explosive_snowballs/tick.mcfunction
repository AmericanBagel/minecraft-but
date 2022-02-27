tag @s remove abch.esMExists
execute at @e[ type=snowball ] if score @s abch.esUUID1 = @e[ type=snowball, limit=1, sort=nearest ] abch.esUUID1 if score @s abch.esUUID2 = @e[ type=snowball, limit=1, sort=nearest ] abch.esUUID2 if score @s abch.esUUID3 = @e[ type=snowball, limit=1, sort=nearest ] abch.esUUID3 if score @s abch.esUUID4 = @e[ type=snowball, limit=1, sort=nearest ] abch.esUUID4 run tp @s ~ ~ ~
execute at @e[ type=snowball ] if score @s abch.esUUID1 = @e[ type=snowball, limit=1, sort=nearest ] abch.esUUID1 if score @s abch.esUUID2 = @e[ type=snowball, limit=1, sort=nearest ] abch.esUUID2 if score @s abch.esUUID3 = @e[ type=snowball, limit=1, sort=nearest ] abch.esUUID3 if score @s abch.esUUID4 = @e[ type=snowball, limit=1, sort=nearest ] abch.esUUID4 run tag @s add abch.esMExists

execute unless entity @s[ tag=abch.esMExists ] run summon creeper ~ ~ ~ {Fuse: 0s, ignited: 1b}
execute unless entity @s[ tag=abch.esMExists ] run kill @s