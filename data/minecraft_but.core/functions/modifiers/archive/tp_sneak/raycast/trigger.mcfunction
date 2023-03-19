##> minecraft_but.coreraft_but.core:modifiers/tp_sneak/raycast/trigger
##
## Function to run on raycast hit
##
## @context raycast
##
## @within minecraft_but.coreraft_but.core:modifiers/tp_sneak/raycast/**
#
## Set hit bool to 1 so this function does not get run twice
#scoreboard players set #hit minecraft_but.tp_sneak.raycast 1
#
## TP player
#tp @p[tag=minecraft_but.tp_sneak.ray] ^ ^ ^-0.5