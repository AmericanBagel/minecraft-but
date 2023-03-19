#> minecraft_but.coreraft_but.core:modifiers/teleport_chorus/check
# Function run by minecraft_but.coreraft_but.core:modifiers/teleport_chorus/eat_chorus_fruit
# which checks if the data pack is enabled and revokes the
# advancement so it can be used again

scoreboard players reset $bool minecraft_but.teleport_chorus
advancement revoke @s only minecraft_but.coreraft_but.core:modifiers/teleport_chorus/eat_chorus_fruit
execute if score teleport_chorus minecraft_but.toggle matches 1.. if entity @s[tag=!global.ignore,tag=!minecraft_but.teleport_chorus.blacklist,tag=!minecraft_bminecraft_but.coreacklist] run function minecraft_but.core:modifiers/teleport_chorus/teleport