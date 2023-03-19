#> abchc:modifiers/mermaid/in_water
# Commands to run for player in water
# Includes effects and sound
# @within abchc:modifiers/mermaid/main
# @context player in water

#> Effects
## Clear effects
effect clear @s poison
effect clear @s wither

## Give effects
execute unless entity @s[tag=abch.mermaid.rain] run effect give @s water_breathing 1 255 true
execute unless entity @s[tag=abch.mermaid.rain] run effect give @s conduit_power 1 2 true
execute unless entity @s[tag=abch.mermaid.rain] run effect give @s haste 1 8 true

execute unless entity @s[tag=abch.mermaid.rain] unless score mermaid.dolphins_grace abch.config matches 0 run effect give @s dolphins_grace 1 0 true


#> Clear warning message
execute if score @s abch.mermaid.timer matches 1.. run title @s actionbar ""

#> Clear time in water
scoreboard players remove @s abch.mermaid.timer 1
execute if score @s abch.mermaid.timer matches 0..14 run scoreboard players set @s abch.mermaid.timer -20
execute if score @s abch.mermaid.timer matches 15.. run scoreboard players set @s abch.mermaid.timer -1

#> Sound effects
# Return to water SFX
execute unless score mermaid.sfx abch.config matches 0 run function abchc:modifiers/mermaid/relief_sound

#> Give players effects