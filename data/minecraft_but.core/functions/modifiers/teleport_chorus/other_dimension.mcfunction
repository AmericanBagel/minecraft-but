scoreboard players set $min random 1
scoreboard players set $max random 3
function random:uniform

execute if score $out random matches 1 run function minecraft_but.core:modifiers/teleport_chorus/tp_overworld
execute if score $out random matches 2 run function minecraft_but.core:modifiers/teleport_chorus/tp_nether
execute if score $out random matches 3 run function minecraft_but.core:modifiers/teleport_chorus/tp_end