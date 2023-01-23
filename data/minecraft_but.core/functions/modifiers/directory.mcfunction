#> minecraft_but.core:modifiers/directory
# Main modifier function for runnig and managing other modifiers
# @within minecraft_but.core:main
# @context root
# @input
#   score <modifier> minecraft_but.toggle
#       Boolean for modifier's toggle status. 0 = off, 1 = on.

#> 🎛️ If manual mode (1) is enabled, run manual function
execute if score mode minecraft_but.config matches 1 run function minecraft_but.core:modifiers/manual

#> 🎲 If random mode (2) is enabled, run random function
execute if score mode minecraft_but.config matches 2 run function minecraft_but.core:random

#> 🏃 If speedrun mode (3) is enabled, run speedrun function
execute if score mode minecraft_but.config matches 3 run function minecraft_but.core:modifiers/speedrun

#> Run modifiers if they are enabled

#> Reset criteria-based scoreboards
# This prevents unexpected behavior of criteria scoreboard
# based modifier actions acting upon load.
# i.e. taking damage, turning on ender blood, being teleported
scoreboard players reset * minecraft_but.deaths
scoreboard players reset * minecraft_but.no_walk
scoreboard players reset * minecraft_but.sneak
scoreboard players reset * minecraft_but.jump
scoreboard players reset * minecraft_but.mobkill
scoreboard players reset * minecraft_but.pacifist.kill
scoreboard players reset * minecraft_but.blinding_damage
scoreboard players reset * minecraft_but.damage_nausea
scoreboard players reset * minecraft_but.death
scoreboard players reset * minecraft_but.deadly_falls
scoreboard players reset * minecraft_but.esSneak
scoreboard players reset * minecraft_but.ender_blood.damage
scoreboard players reset * minecraft_but.suspicious_injury.damage
scoreboard players reset * minecraft_but.no_gravity.sneak
execute unless score walk_leveling minecraft_but.toggle matches 1 run scoreboard players reset * minecraft_but.walk_leveling.xp
scoreboard players reset * minecraft_but.tp_sneak.sneak
execute unless score mermaid minecraft_but.toggle matches 1 run scoreboard players reset * minecraft_but.mermaid.deaths