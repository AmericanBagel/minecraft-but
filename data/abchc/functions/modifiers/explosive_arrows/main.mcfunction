execute as @e[ type=arrow, nbt={inGround: 1b} ] at @s run summon creeper ~ ~ ~ {ExplosionRadius: 2b, Fuse: 0, Tags:["abch","abch.explosive_arrows"]}
execute as @e[ type=creeper, tag=abch.explosive_arrows ] at @s store result entity @s ExplosionRadius byte 1 run scoreboard players get explosive_arrows.radius abch.config
kill @e[ type=arrow, nbt={inGround: 1b} ]