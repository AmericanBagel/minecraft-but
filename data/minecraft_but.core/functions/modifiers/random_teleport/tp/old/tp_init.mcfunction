#> minecraft_but.coreraft_but.core:modifiers/random_teleport/tp/tp_init
# Initialize randomly teleporting player
# @within minecraft_but.coreraft_but.core:modifier/random_teleport/rand
# @context player on sucessful roll

#> Effects at previous location
particle portal ~ ~.5 ~ 0 0.25 0 1 30 normal
playsound entity.enderman.teleport player @s ~ ~ ~ 1 1 1

#> TP
function minecraft_but.coreraft_but.core:modifiers/random_teleport/tp/start_search
#spreadplayers ~ ~ 1 10 false @s

#> Effects at TP destination
execute at @s run playsound entity.enderman.teleport player @s ~ ~ ~ 1 1 1
execute at @s run particle portal ~ ~.5 ~ 0 0.25 0 1 30 normal