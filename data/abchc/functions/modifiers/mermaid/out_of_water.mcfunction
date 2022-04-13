#> abchc:modifiers/mermaid/out_of_water
# Commands to run for players out of water
# Includes warnings and effects
# @within abchc:modifiers/mermaid/main
# @context players outside water

#> Effects based on difficulty
execute if score @s abch.mermaid.timer matches 2.. if score difficulty.mermaid abch.config matches 0 run effect give @s poison 3 1 true
execute if score @s abch.mermaid.timer matches 2.. unless score difficulty.mermaid abch.config matches 0 unless score difficulty.mermaid abch.config matches 2..3 run effect give @s wither 2 0 true
execute if score @s abch.mermaid.timer matches 2.. if score difficulty.mermaid abch.config matches 2 run effect give @s instant_damage 1 0 true
execute if score @s abch.mermaid.timer matches 20.. if score difficulty.mermaid abch.config matches 3 run kill @s

#> Get tick number of second for warning text and danger tone
scoreboard players operation $tick abch.mermaid = @s abch.mermaid.timer
scoreboard players operation $tick abch.mermaid %= #20 abch.math

#> Warning text
#execute unless predicate abchc:raining run title @s actionbar {"text":"Get back in the water!","color":"red","bold":true}
#execute if predicate abchc:raining run title @s actionbar {"text":"Get back in water or under rain!","color":"red","bold":true}

execute unless score mermaid.warning abch.config matches 0 unless predicate abchc:raining run function abchc:modifiers/mermaid/water_warning
execute unless score mermaid.warning abch.config matches 0 unless score mermaid.rain abch.config matches 0 if predicate abchc:raining run function abchc:modifiers/mermaid/rain_warning
execute if score mermaid.rain abch.config matches 0 run function abchc:modifiers/mermaid/water_warning

title @s times 0 1 1

#> Danger tone
execute unless score mermaid.sfx abch.config matches 0 if score $tick abch.mermaid matches 8.. run function abchc:modifiers/mermaid/warning_sound
execute if score @s abch.mermaid.timer matches ..0 run scoreboard players set @s abch.mermaid.timer 1

# Increase timer
scoreboard players add @s abch.mermaid.timer 1