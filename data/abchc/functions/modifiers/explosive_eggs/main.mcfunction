execute as @e[type=chicken,nbt={EggLayTime:1}] at @s run effect give @s resistance 2 255 true
execute as @e[type=chicken,nbt={EggLayTime:1}] at @s run playsound minecraft:entity.chicken.hurt master @a ~ ~ ~ 1 0.75
execute as @e[type=chicken,nbt={EggLayTime:1}] at @s run summon creeper ~ ~ ~ {ExplosionRadius:5b,Fuse:0,ignited:1b}
execute as @e[type=chicken,nbt={EggLayTime:1}] at @s run summon item ~ ~ ~ {Health:1000,Item:{id:"minecraft:egg",Count:64b}}

execute as @e[type=egg,tag=!abch_eeMarked] at @s run function abchc:modifiers/explosive_eggs/mark
execute as @e[type=area_effect_cloud,name="abch_eeMarker"] at @s run function abchc:modifiers/explosive_eggs/tick