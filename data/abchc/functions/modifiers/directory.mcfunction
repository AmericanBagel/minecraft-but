#> abchc:modifiers/directory
# Main modifier function for runnig and managing other modifiers
# @within abchc:main
# @context root
# @input
#   score <modifier> abch.toggle
#       Boolean for modifier's toggle status. 0 = off, 1 = on.

function abchc:modifiers/off

#> 🎛️ If manual mode (1) is enabled, run manual function
execute if score mode abch.config matches 1 run function abchc:modifiers/manual

#> 🎲 If random mode (2) is enabled, run random function
execute if score mode abch.config matches 2 run function abchc:random

#> 🏃 If speedrun mode (3) is enabled, run speedrun function
execute if score mode abch.config matches 3 run function abchc:modifiers/speedrun

#> Run modifiers if they are enabled

#> Reset criteria-based scoreboards
# This prevents unexpected behavior of criteria scoreboard
# based modifier actions acting upon load.
# i.e. taking damage, turning on ender blood, being teleported
scoreboard players reset * abch.deaths
scoreboard players reset * abch.no_walk
scoreboard players reset * abch.sneak
scoreboard players reset * abch.jump
scoreboard players reset * abch.mobkill
scoreboard players reset * abch.pacifist.kill
scoreboard players reset * abch.blinding_damage
scoreboard players reset * abch.damage_nausea
scoreboard players reset * abch.death
scoreboard players reset * abch.deadly_falls
scoreboard players reset * abch.esSneak
scoreboard players reset * abch.ender_blood.damage
scoreboard players reset * abch.suspicious_injury.damage
scoreboard players reset * abch.no_gravity.sneak
execute unless score walk_leveling abch.toggle matches 1 run scoreboard players reset * abch.walk_leveling.xp
scoreboard players reset * abch.tp_sneak.sneak
execute unless score mermaid abch.toggle matches 1 run scoreboard players reset * abch.mermaid.deaths