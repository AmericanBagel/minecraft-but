tag @s remove minecraft_but.eeMExists
execute at @e[ type=egg ] if score @s minecraft_but.explosive_eggs.UUID1 = @e[ type=egg, limit=1, sort=nearest ] minecraft_but.explosive_eggs.UUID1 if score @s minecraft_but.explosive_eggs.UUID2 = @e[ type=egg, limit=1, sort=nearest ] minecraft_but.explosive_eggs.UUID2 if score @s minecraft_but.explosive_eggs.UUID3 = @e[ type=egg, limit=1, sort=nearest ] minecraft_but.explosive_eggs.UUID3 if score @s minecraft_but.explosive_eggs.UUID4 = @e[ type=egg, limit=1, sort=nearest ] minecraft_but.explosive_eggs.UUID4 run tp @s ~ ~ ~
execute at @e[ type=egg ] if score @s minecraft_but.explosive_eggs.UUID1 = @e[ type=egg, limit=1, sort=nearest ] minecraft_but.explosive_eggs.UUID1 if score @s minecraft_but.explosive_eggs.UUID2 = @e[ type=egg, limit=1, sort=nearest ] minecraft_but.explosive_eggs.UUID2 if score @s minecraft_but.explosive_eggs.UUID3 = @e[ type=egg, limit=1, sort=nearest ] minecraft_but.explosive_eggs.UUID3 if score @s minecraft_but.explosive_eggs.UUID4 = @e[ type=egg, limit=1, sort=nearest ] minecraft_but.explosive_eggs.UUID4 run tag @s add minecraft_but.eeMExists

execute unless entity @s[ tag=minecraft_but.eeMExists ] run summon creeper ~ ~ ~ {Fuse: 0s, ignited: 1b, Tags:["minecraft_but","minecraft_but.explosive_eggs","minecraft_but.explosive_eggs.creeper"]}
execute as @e[ type=creeper, tag=minecraft_but.explosive_eggs.creeper ] store result entity @s ExplosionRadius byte 1 run scoreboard players get explosive_eggs.radius minecraft_but.config 
execute unless entity @s[ tag=minecraft_but.eeMExists ] run kill @s