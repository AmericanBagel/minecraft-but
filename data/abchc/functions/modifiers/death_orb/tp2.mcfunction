#> abchc:modifiers/death_orb/tp2
# TP orb .001 blocks towards player
# @within abchc:modifiers/death_orb/actions
# @context orb
# @input
#   score @s abch.death_orb.distance
#       Distance between orb and player in blocks

#execute at @p facing entity @p eyes at @s run tp @s ^ ^ ^0.05
#execute as @e[name=arm] at @s facing entity @p eyes run tp @s ^ ^ ^.1 ~ ~
execute at @s facing entity @p[ tag=abch.death_orb.this ] eyes run tp @s ^ ^ ^.25 ~ ~