#> minecraft_but.core:modifiers/toxic_water/out_of_water
# Commands to run for player out of water
# Includes effects and sound
# @within minecraft_but.core:modifiers/toxic_water/main
# @context player in water

#> Effects
## Clear effects
effect clear @s poison
effect clear @s wither

## Give effects
execute unless entity @s[tag=minecraft_but.toxic_water.rain] run effect give @s water_breathing 1 255 true
execute unless entity @s[tag=minecraft_but.toxic_water.rain] run effect give @s conduit_power 1 2 true

#> Clear warning message
execute if score @s minecraft_but.toxic_water.timer matches 1.. run title @s actionbar ""

#> Clear time in water
scoreboard players remove @s minecraft_but.toxic_water.timer 1
execute if score @s minecraft_but.toxic_water.timer matches 0..14 run scoreboard players set @s minecraft_but.toxic_water.timer -20
execute if score @s minecraft_but.toxic_water.timer matches 15.. run scoreboard players set @s minecraft_but.toxic_water.timer -1

#> Sound effects
# Return to water SFX
execute unless score toxic_water.sfx minecraft_but.config matches 0 run function minecraft_but.core:modifiers/toxic_water/relief_sound

#> Give players effects