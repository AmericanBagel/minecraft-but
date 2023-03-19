#> minecraft_but.core:modifiers/death_orb/actions
#
# Actions to run for death orb while linked
#
# Refer to death orb with `@s`
# Refer to player with `@p[ tag=minecraft_but.death_orb.this ]`
#
# @context orb
# @within minecraft_but.core:modifiers/death_orb/**

#> Remove spawn tag since death orb has been found
tag @p remove minecraft_but.death_orb.spawn

#> Get distance between player and orb
function minecraft_but.core:modifiers/death_orb/get_distance

#> Multiply speed based on distance
# Use different magnitudes to use less commands
#   e.g. a distance of 247 would use `100` twice,
#   leaving 47 which would use `10` four times,
#   leaving 7 which would use `1` seven times,
#   for a total of 13 commands instead of 247
#execute if score @s minecraft_but.death_orb.distance matches ..9 run function minecraft_but.core:modifiers/death_orb/tp/1
#execute if score @s minecraft_but.death_orb.distance matches 10..49 run function minecraft_but.core:modifiers/death_orb/tp/10
#execute if score @s minecraft_but.death_orb.distance matches 50..99 run function minecraft_but.core:modifiers/death_orb/tp/50
#execute if score @s minecraft_but.death_orb.distance matches 100..499 run function minecraft_but.core:modifiers/death_orb/tp/100
#execute if score @s minecraft_but.death_orb.distance matches 100..499 run function minecraft_but.core:modifiers/death_orb/tp/100
#execute if score @s minecraft_but.death_orb.distance matches 1000.. run function minecraft_but.core:modifiers/death_orb/tp/1000


#> Visuals
# Particle
function minecraft_but.core:modifiers/death_orb/visuals/directory

#> Effects
execute at @s as @e[type=#minecraft_but.core:living_base,distance=..2] run damage @s 4 minecraft:magic
# execute at @s run effect give @e[type=#minecraft_but.core:living_base,distance=..2] wither 1 5
execute at @s run effect give @e[type=#minecraft_but.core:living_base,distance=..2] slowness 1 2

execute at @s run effect give @e[type=#minecraft_but.core:living_base,distance=2..3] wither 1 3
execute at @s run effect give @e[type=#minecraft_but.core:living_base,distance=2..3] slowness 1 1

execute at @s run effect give @e[type=#minecraft_but.core:living_base,distance=3..6] wither 1 2
execute at @s run effect give @e[type=#minecraft_but.core:living_base,distance=3..6] slowness 1 0

execute at @s run effect give @e[type=#minecraft_but.core:living_base,distance=6..7] wither 1 0
execute at @s run effect give @e[type=#minecraft_but.core:living_base,distance=6..7] slowness 1 0

#> Corruption
execute unless score death_orb.corrupt minecraft_but.config matches ..0 at @s run function minecraft_but.core:modifiers/death_orb/corruption/directory

execute if score death_orb.corrupt minecraft_but.config matches ..0 at @s run function minecraft_but.core:modifiers/death_orb/corruption/air

#> Death Message (after detonation)
execute as @a[ tag=minecraft_but.death_orb.death ] run function minecraft_but.core:modifiers/death_orb/death_message

#> TP
# Divide distance into factor (so it's not too fast)
scoreboard players set $divisor minecraft_but.death_orb.distance 4
scoreboard players operation $factor minecraft_but.death_orb.distance = @s minecraft_but.death_orb.distance
scoreboard players operation $factor minecraft_but.death_orb.distance /= $divisor minecraft_but.death_orb.distance

function minecraft_but.core:modifiers/death_orb/tp
execute if score @s minecraft_but.death_orb.distance matches ..10 run function minecraft_but.core:modifiers/death_orb/tp
execute if score @s minecraft_but.death_orb.distance matches ..10 run function minecraft_but.core:modifiers/death_orb/tp
#function minecraft_but.core:modifiers/death_orb/tp

#> Detonation
tag @e remove minecraft_but.death_orb.detonated
execute at @s if entity @e[ type=#minecraft_but.core:living_base,distance=..2] at @e[ type=#minecraft_but.core:living_base,distance=..2] run function minecraft_but.core:modifiers/death_orb/detonate

#> Forceloading (to prevent despawning)
function minecraft_but.core:modifiers/death_orb/forceload/directory