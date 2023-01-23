#> minecraft_but.core:modifiers/waning_wellness/reduce_health
# Reduce player health with visual and sound effects
# @context player
# @within minecraft_but.core:modifiers/waning_wellness/actions

#> Effects
# Visual
playsound minecraft:particle.soul_escape player @s ~ ~ ~ 10 0.9
playsound minecraft:particle.soul_escape player @s ~ ~ ~ 10 1
playsound minecraft:particle.soul_escape player @s ~ ~ ~ 10 1.1
playsound minecraft:entity.phantom.ambient player @s ~ ~ ~ 10 0.5
particle soul ~ ~1 ~ .5 .75 .5 0 30 normal
#playsound minecraft:ambient.soul_sand_valley.additions ambient @s ~ ~ ~ 10

#> Reduce max health
execute if score @s minecraft_but.waning_wellness.max_health matches 2 run attribute @s generic.max_health base set 1
execute if score @s minecraft_but.waning_wellness.max_health matches 3..4 run attribute @s generic.max_health base set 2
execute if score @s minecraft_but.waning_wellness.max_health matches 5..6 run attribute @s generic.max_health base set 4
execute if score @s minecraft_but.waning_wellness.max_health matches 7..8 run attribute @s generic.max_health base set 6
execute if score @s minecraft_but.waning_wellness.max_health matches 9..10 run attribute @s generic.max_health base set 8
execute if score @s minecraft_but.waning_wellness.max_health matches 11..12 run attribute @s generic.max_health base set 10
execute if score @s minecraft_but.waning_wellness.max_health matches 13..14 run attribute @s generic.max_health base set 12
execute if score @s minecraft_but.waning_wellness.max_health matches 15..16 run attribute @s generic.max_health base set 14
execute if score @s minecraft_but.waning_wellness.max_health matches 17..18 run attribute @s generic.max_health base set 16
execute if score @s minecraft_but.waning_wellness.max_health matches 19..20 run attribute @s generic.max_health base set 18
execute if score @s minecraft_but.waning_wellness.max_health matches 21..22 run attribute @s generic.max_health base set 20
execute if score @s minecraft_but.waning_wellness.max_health matches 23..24 run attribute @s generic.max_health base set 22
execute if score @s minecraft_but.waning_wellness.max_health matches 25..26 run attribute @s generic.max_health base set 24
execute if score @s minecraft_but.waning_wellness.max_health matches 27..28 run attribute @s generic.max_health base set 26
execute if score @s minecraft_but.waning_wellness.max_health matches 29..30 run attribute @s generic.max_health base set 28
execute if score @s minecraft_but.waning_wellness.max_health matches 31..32 run attribute @s generic.max_health base set 30
execute if score @s minecraft_but.waning_wellness.max_health matches 33..34 run attribute @s generic.max_health base set 32
execute if score @s minecraft_but.waning_wellness.max_health matches 35..36 run attribute @s generic.max_health base set 34
execute if score @s minecraft_but.waning_wellness.max_health matches 37..38 run attribute @s generic.max_health base set 36
execute if score @s minecraft_but.waning_wellness.max_health matches 39..40 run attribute @s generic.max_health base set 38

#> Update health bar for max health
effect give @s instant_health 1 5 true

#> Update max health for reduced max health
execute store result score @s minecraft_but.waning_wellness.max_health run attribute @s generic.max_health base get