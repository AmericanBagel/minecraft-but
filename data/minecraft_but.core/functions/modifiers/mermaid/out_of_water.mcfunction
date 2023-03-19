#> minecraft_but.core:modifiers/mermaid/out_of_water
# Commands to run for players out of water
# Includes warnings and effects
# @within minecraft_but.core:modifiers/mermaid/main
# @context players outside water

#> Get tick number of second for warning text and danger tone
scoreboard players operation $tick minecraft_but.mermaid = @s minecraft_but.mermaid.timer
scoreboard players operation $tick minecraft_but.mermaid %= #20 minecraft_but.math

#> Effects based on difficulty
execute if score @s minecraft_but.mermaid.timer matches 4.. if score difficulty.mermaid minecraft_but.config matches 0 run effect give @s poison 3 1 true
execute if score @s minecraft_but.mermaid.timer matches 4.. unless score difficulty.mermaid minecraft_but.config matches 0 unless score difficulty.mermaid minecraft_but.config matches 2..3 run effect give @s wither 2 0 true
execute if score @s minecraft_but.mermaid.timer matches 20.. if score difficulty.mermaid minecraft_but.config matches 3 run kill @s

execute if score @s minecraft_but.mermaid.timer matches 20.. if score difficulty.mermaid minecraft_but.config matches 2 if score $tick minecraft_but.mermaid matches ..19 run effect give @s instant_damage 1 0 true

#> Warning text
#execute unless predicate minecraft_but.core:raining run title @s actionbar {"text":"Get back in the water!","color":"red","bold":true}
#execute if predicate minecraft_but.core:raining run title @s actionbar {"text":"Get back in water or under rain!","color":"red","bold":true}

execute unless score mermaid.warning minecraft_but.config matches 0 unless predicate minecraft_but.core:raining run function minecraft_but.core:modifiers/mermaid/water_warning
execute unless score mermaid.warning minecraft_but.config matches 0 unless score mermaid.rain minecraft_but.config matches 0 if predicate minecraft_but.core:raining run function minecraft_but.core:modifiers/mermaid/rain_warning
execute if score mermaid.rain minecraft_but.config matches 0 run function minecraft_but.core:modifiers/mermaid/water_warning

title @s times 0 1 1

#> Danger tone
execute unless score mermaid.sfx minecraft_but.config matches 0 if score $tick minecraft_but.mermaid matches 8.. run function minecraft_but.core:modifiers/mermaid/warning_sound
execute if score @s minecraft_but.mermaid.timer matches ..0 run scoreboard players set @s minecraft_but.mermaid.timer 1

# Increase timer
scoreboard players add @s minecraft_but.mermaid.timer 1