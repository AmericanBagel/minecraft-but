#> abchc:modifiers/death_orb/actions
#
# Actions to run for death orb while linked
#
# Refer to death orb with `@s`
# Refer to player with `@p[ tag=abch.death_orb.this ]`
#
# @context orb
# @within abchc:modifiers/death_orb/**

#> Remove spawn tag since death orb has been found
tag @p remove abch.death_orb.spawn

#> Get distance between player and orb
function abchc:modifiers/death_orb/get_distance

#> Multiply speed based on distance
# Use different magnitudes to use less commands
#   e.g. a distance of 247 would use `100` twice,
#   leaving 47 which would use `10` four times,
#   leaving 7 which would use `1` seven times,
#   for a total of 13 commands instead of 247
#execute if score @s abch.death_orb.distance matches ..9 run function abchc:modifiers/death_orb/tp/1
#execute if score @s abch.death_orb.distance matches 10..49 run function abchc:modifiers/death_orb/tp/10
#execute if score @s abch.death_orb.distance matches 50..99 run function abchc:modifiers/death_orb/tp/50
#execute if score @s abch.death_orb.distance matches 100..499 run function abchc:modifiers/death_orb/tp/100
#execute if score @s abch.death_orb.distance matches 100..499 run function abchc:modifiers/death_orb/tp/100
#execute if score @s abch.death_orb.distance matches 1000.. run function abchc:modifiers/death_orb/tp/1000

#> TP
execute if score @s abch.death_orb.distance matches 1.. run function abchc:modifiers/death_orb/tp
#function abchc:modifiers/death_orb/tp


#> Forceloading (to prevent despawning)
#function abchc:modifiers/death_orb/forceload/add_init
#function abchc:modifiers/death_orb/forceload/remove_init


#> Visuals
# Particle
execute at @s run particle flame ~ ~ ~ 0.1 0.1 0.1 0.0001 2 force