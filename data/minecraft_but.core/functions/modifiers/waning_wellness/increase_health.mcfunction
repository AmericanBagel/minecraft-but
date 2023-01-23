#> minecraft_but.core:modifiers/waning_wellness/increase_health
# Increase player health with visual and sound effects
# @context player
# @within minecraft_but.core:modifiers/waning_wellness/actions

#> Effects
# Visual
playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~
playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 1 1

particle minecraft:heart ~ ~.5 ~ .5 .5 .5 1 10 normal

execute if score @s minecraft_but.waning_wellness.max_health matches 37.. run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1 1
playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 4 .9
playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 4 1.2
playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 4 1.1
playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 4 1

#> Get max health
execute store result score @s minecraft_but.waning_wellness.max_health run attribute @s generic.max_health base get

#> Reduce max health
execute if score @s minecraft_but.waning_wellness.max_health matches 1 run attribute @s generic.max_health base set 2
execute if score @s minecraft_but.waning_wellness.max_health matches 2 run attribute @s generic.max_health base set 4
execute if score @s minecraft_but.waning_wellness.max_health matches 3..4 run attribute @s generic.max_health base set 6
execute if score @s minecraft_but.waning_wellness.max_health matches 5..6 run attribute @s generic.max_health base set 8
execute if score @s minecraft_but.waning_wellness.max_health matches 7..8 run attribute @s generic.max_health base set 10
execute if score @s minecraft_but.waning_wellness.max_health matches 9..10 run attribute @s generic.max_health base set 12
execute if score @s minecraft_but.waning_wellness.max_health matches 11..12 run attribute @s generic.max_health base set 14
execute if score @s minecraft_but.waning_wellness.max_health matches 13..14 run attribute @s generic.max_health base set 16
execute if score @s minecraft_but.waning_wellness.max_health matches 15..16 run attribute @s generic.max_health base set 18
execute if score @s minecraft_but.waning_wellness.max_health matches 17..18 run attribute @s generic.max_health base set 20
execute if score @s minecraft_but.waning_wellness.max_health matches 19..20 run attribute @s generic.max_health base set 22
execute if score @s minecraft_but.waning_wellness.max_health matches 21..22 run attribute @s generic.max_health base set 24
execute if score @s minecraft_but.waning_wellness.max_health matches 23..24 run attribute @s generic.max_health base set 26
execute if score @s minecraft_but.waning_wellness.max_health matches 25..26 run attribute @s generic.max_health base set 28
execute if score @s minecraft_but.waning_wellness.max_health matches 27..28 run attribute @s generic.max_health base set 30
execute if score @s minecraft_but.waning_wellness.max_health matches 29..30 run attribute @s generic.max_health base set 32
execute if score @s minecraft_but.waning_wellness.max_health matches 31..32 run attribute @s generic.max_health base set 34
execute if score @s minecraft_but.waning_wellness.max_health matches 33..34 run attribute @s generic.max_health base set 36
execute if score @s minecraft_but.waning_wellness.max_health matches 35..36 run attribute @s generic.max_health base set 38
execute if score @s minecraft_but.waning_wellness.max_health matches 37..39 run attribute @s generic.max_health base set 40

#> Update health bar for max health
effect give @s instant_health 1 5 true

#> Update max health for reduced max health
execute store result score @s minecraft_but.waning_wellness.max_health run attribute @s generic.max_health base get