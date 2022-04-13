#> abchc:modifiers/toxic_water/out_of_water
# Commands to run for player in water
# Includes effects and sound
# @within abchc:modifiers/toxic_water/main
# @context player in water

#> Effects
## Clear effects
effect clear @s poison
effect clear @s wither

## Give effects
effect give @s water_breathing 1 255 true
effect give @s conduit_power 1 0 true

execute unless score toxic_water.dolphins_grace abch.config matches 0 run effect give @s dolphins_grace 1 0 true

#> Clear time in water
scoreboard players remove @s abch.toxic_water.timer 1
execute if score @s abch.toxic_water.timer matches 0.. run scoreboard players set @s abch.toxic_water.timer -1

#> Clear warning message
execute if score @s abch.toxic_water.timer matches -1 run title @s actionbar ""
#> Sound effects
# Return to water SFX
execute if score @s abch.toxic_water.timer matches -1 run playsound block.note_block.flute master @s ~ ~ ~ .5 0
execute if score @s abch.toxic_water.timer matches -1 run playsound block.note_block.chime master @s ~ ~ ~ .5 0

execute if score @s abch.toxic_water.timer matches -5 run playsound block.note_block.flute master @s ~ ~ ~ .5 .33
execute if score @s abch.toxic_water.timer matches -5 run playsound block.note_block.chime master @s ~ ~ ~ .5 .33

execute if score @s abch.toxic_water.timer matches -10 run playsound block.note_block.flute master @s ~ ~ ~ .5 .66
execute if score @s abch.toxic_water.timer matches -10 run playsound block.note_block.chime master @s ~ ~ ~ .5 .66

#> Give players effects