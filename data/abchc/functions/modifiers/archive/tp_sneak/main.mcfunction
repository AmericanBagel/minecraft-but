##> abchc:modifiers/tp_sneak/main
##
## Minecraft, but you teleport where you sneak.
##
## @context teleport sneak
##
## @within abchc:modifiers/tp_sneak/**
## @within abchc:modifiers/directory
##
## @input 
##   score @s abch.tp_sneak.sneak
##       Time sneaked to apply effects.
#
#execute as @a[scores={abch.tp_sneak.timer=1..20}] run scoreboard players remove @s abch.tp_sneak.timer 1
#
#execute as @a[tag=!abch.blacklist] at @s if score @s abch.tp_sneak.sneak matches 1.. if score @s abch.tp_sneak.timer matches 0 run function abchc:modifiers/tp_sneak/raycast/start_ray
#scoreboard players reset @a abch.tp_sneak.sneak


#> ARCHIVE INFO
# Archived because I realized that you_tp_where_you_look exists.
# It's painful for me to delete my code, so I'm placing it here
# so I can delete it later, once the emotional stakes are lower
# ;'^)