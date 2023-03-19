execute as @e[ type=chicken, nbt={EggLayTime: 1}, tag=!global.ignore ] at @s run effect give @s resistance 2 255 true
execute as @e[ type=chicken, nbt={EggLayTime: 1}, tag=!global.ignore ] at @s run playsound minecraft:entity.chicken.hurt master @a[ tag=!minecraft_but.blacklist, tag=!global.ignore ] ~ ~ ~ 1 0.75
execute as @e[ type=chicken, nbt={EggLayTime: 1}, tag=!global.ignore ] at @s run summon creeper ~ ~ ~ {ExplosionRadius: 5b, Fuse: 0, ignited: 1b, Tags:["minecraft_but","minecraft_but.explosive_eggs","minecraft_but.explosive_eggs.creeper"]}
execute as @e[ type=creeper, tag=minecraft_but.explosive_eggs.creeper, tag=!global.ignore ] store result entity @s ExplosionRadius byte 1 run scoreboard players get explosive_eggs.radius minecraft_but.config 
execute as @e[ type=chicken, nbt={EggLayTime: 1}, tag=!global.ignore ] at @s run summon item ~ ~ ~ {Health: 1000, Item: {id: "minecraft:egg", Count: 64b}}

execute as @e[ type=egg, tag=!minecraft_but.eeMarked, tag=!global.ignore ] at @s run minecraft_but.coreion minecraft_but.core:modifiers/explosive_eggs/mark
execute as @e[ type=area_effect_cloud, name="minecraft_but.eeMarker" ] at @s run minecraft_but.coreion minecraft_but.core:modifiers/explosive_eggs/tick