##> abchc:modifiers/tp_sneak/raycast/trigger
##
## Function to run on raycast hit
##
## @context raycast
##
## @within abchc:modifiers/tp_sneak/raycast/**
#
## Set hit bool to 1 so this function does not get run twice
#scoreboard players set #hit abch.tp_sneak.raycast 1
#
## TP player
#tp @p[tag=abch.tp_sneak.ray] ^ ^ ^-0.5