#summon ender_pearl ~ ~ ~
#data modify entity @e[type=ender_pearl,sort=nearest,limit=1] Motion set from entity @s Motion
#data modify entity @e[type=ender_pearl,sort=nearest,limit=1] Owner set from entity @s Owner
#tag @s add abch.tparrow

execute store result score @s abch.tp_arrows.UUID1 run data get entity @s Owner[0]
execute store result score @s abch.tp_arrows.UUID2 run data get entity @s Owner[1]
execute store result score @s abch.tp_arrows.UUID3 run data get entity @s Owner[2]
execute store result score @s abch.tp_arrows.UUID4 run data get entity @s Owner[3]

execute as @a[ tag=!blacklist, tag=!global.ignore ] store result score @s abch.tp_arrows.UUID1 run data get entity @s UUID[0]
execute as @a[ tag=!blacklist, tag=!global.ignore ] store result score @s abch.tp_arrows.UUID2 run data get entity @s UUID[1]
execute as @a[ tag=!blacklist, tag=!global.ignore ] store result score @s abch.tp_arrows.UUID3 run data get entity @s UUID[2]
execute as @a[ tag=!blacklist, tag=!global.ignore ] store result score @s abch.tp_arrows.UUID4 run data get entity @s UUID[3]

execute as @a[ tag=!blacklist, tag=!global.ignore ] at @e[ type=arrow, nbt={inGround: 1b} ] if entity @e[ type=arrow, nbt={inGround: 1b} ] if score @s abch.tp_arrows.UUID1 = @e[ type=arrow, limit=1, sort=nearest ] abch.tp_arrows.UUID1 if score @s abch.tp_arrows.UUID2 = @e[ type=arrow, limit=1, sort=nearest ] abch.tp_arrows.UUID2 if score @s abch.tp_arrows.UUID3 = @e[ type=arrow, limit=1, sort=nearest ] abch.tp_arrows.UUID3 if score @s abch.tp_arrows.UUID4 = @e[ type=arrow, limit=1, sort=nearest ] abch.tp_arrows.UUID4 at @s run particle portal ~ ~.5 ~ 0 0.25 0 1 30 force
execute as @a[ tag=!blacklist, tag=!global.ignore ] at @e[ type=arrow, nbt={inGround: 1b} ] if entity @e[ type=arrow, nbt={inGround: 1b} ] if score @s abch.tp_arrows.UUID1 = @e[ type=arrow, limit=1, sort=nearest ] abch.tp_arrows.UUID1 if score @s abch.tp_arrows.UUID2 = @e[ type=arrow, limit=1, sort=nearest ] abch.tp_arrows.UUID2 if score @s abch.tp_arrows.UUID3 = @e[ type=arrow, limit=1, sort=nearest ] abch.tp_arrows.UUID3 if score @s abch.tp_arrows.UUID4 = @e[ type=arrow, limit=1, sort=nearest ] abch.tp_arrows.UUID4 run tp @s ~ ~ ~
execute as @a[ tag=!blacklist, tag=!global.ignore ] at @e[ type=arrow, nbt={inGround: 1b} ] if entity @e[ type=arrow, nbt={inGround: 1b} ] if score @s abch.tp_arrows.UUID1 = @e[ type=arrow, limit=1, sort=nearest ] abch.tp_arrows.UUID1 if score @s abch.tp_arrows.UUID2 = @e[ type=arrow, limit=1, sort=nearest ] abch.tp_arrows.UUID2 if score @s abch.tp_arrows.UUID3 = @e[ type=arrow, limit=1, sort=nearest ] abch.tp_arrows.UUID3 if score @s abch.tp_arrows.UUID4 = @e[ type=arrow, limit=1, sort=nearest ] abch.tp_arrows.UUID4 run tag @e[ type=arrow, limit=1, sort=nearest ] add abch.tpaTP
execute as @a[ tag=!blacklist, tag=!global.ignore ] at @e[ type=arrow, nbt={inGround: 1b} ] if entity @e[ type=arrow, nbt={inGround: 1b} ] if score @s abch.tp_arrows.UUID1 = @e[ type=arrow, limit=1, sort=nearest ] abch.tp_arrows.UUID1 if score @s abch.tp_arrows.UUID2 = @e[ type=arrow, limit=1, sort=nearest ] abch.tp_arrows.UUID2 if score @s abch.tp_arrows.UUID3 = @e[ type=arrow, limit=1, sort=nearest ] abch.tp_arrows.UUID3 if score @s abch.tp_arrows.UUID4 = @e[ type=arrow, limit=1, sort=nearest ] abch.tp_arrows.UUID4 run playsound entity.enderman.teleport player @s ~ ~ ~ 1 1 1
execute as @a[ tag=!blacklist, tag=!global.ignore ] at @e[ type=arrow, nbt={inGround: 1b} ] if entity @e[ type=arrow, nbt={inGround: 1b} ] if score @s abch.tp_arrows.UUID1 = @e[ type=arrow, limit=1, sort=nearest ] abch.tp_arrows.UUID1 if score @s abch.tp_arrows.UUID2 = @e[ type=arrow, limit=1, sort=nearest ] abch.tp_arrows.UUID2 if score @s abch.tp_arrows.UUID3 = @e[ type=arrow, limit=1, sort=nearest ] abch.tp_arrows.UUID3 if score @s abch.tp_arrows.UUID4 = @e[ type=arrow, limit=1, sort=nearest ] abch.tp_arrows.UUID4 run particle reverse_portal ~ ~.5 ~ 0 0.25 0 .5 20 force

