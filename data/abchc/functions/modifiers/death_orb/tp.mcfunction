#> abchc:modifiers/death_orb/tp
# TP orb .001 blocks towards player
# @within abchc:modifiers/death_orb/actions
# @context orb
# @input
#   score @s abch.death_orb.distance
#       Distance between orb and player in blocks

#> TP
execute at @s facing entity @p[ tag= abch.death_orb.this ] eyes run tp @s ^ ^ ^.015 ~ ~

#> Remove distance in loop
scoreboard players remove $factor abch.death_orb.distance 1

#> Loop
execute if score $factor abch.death_orb.distance matches 1.. facing entity @p[ tag=abch.death_orb.this ] eyes at @s positioned ^ ^ ^.015 run function abchc:modifiers/death_orb/tp