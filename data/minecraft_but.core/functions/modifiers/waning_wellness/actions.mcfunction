#> minecraft_but.core:modifiers/waning_wellness/actions
# Function for managing adding and reducing max health
execute if score @s minecraft_but.waning_wellness.death_time matches 1 run function minecraft_but.core:modifiers/waning_wellness/reduce_health