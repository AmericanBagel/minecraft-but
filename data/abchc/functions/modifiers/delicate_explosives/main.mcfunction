execute as @a[ nbt={HurtTime: 10s, Inventory: [ {id: "minecraft:tnt"} ]}, tag=!abch.blacklist, tag=!abch.delicate_explosives.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator  ] at @s run summon tnt ~ ~ ~ {Fuse: 80}
execute as @a[ nbt={HurtTime: 10s, Inventory: [ {id: "minecraft:tnt"} ]}, tag=!abch.blacklist, tag=!abch.delicate_explosives.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator  ] at @s run clear @s tnt 1


execute as @a[ nbt={HurtTime: 10s, Inventory: [ {id: "minecraft:gunpowder"} ]}, tag=!abch.blacklist, tag=!abch.delicate_explosives.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator  ] at @s run summon creeper ~ ~ ~ {ExplosionRadius: 1b, Fuse: 0}
execute as @a[ nbt={HurtTime: 10s, Inventory: [ {id: "minecraft:gunpowder"} ]}, tag=!abch.blacklist, tag=!abch.delicate_explosives.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator  ] at @s run clear @s gunpowder 1