#> minecraft_but.core:modifiers/random_structures/pick_place
# Choose which subfunction of /place to use
# @within minecraft_but.core:modifiers/random_structures/start_loop_default
# @context player

scoreboard players set $min random 1
scoreboard players set $max random 2
function random:uniform

function minecraft_but.core:modifiers/random_structures/summon_marker

execute as @e[type=marker,tag=minecraft_but.random_structures] at @s if score $out random matches 1 run function minecraft_but.core:modifiers/random_structures/place_feature
execute as @e[type=marker,tag=minecraft_but.random_structures] at @s if score $out random matches 2 run function minecraft_but.core:modifiers/random_structures/place_structure

# Not doing jigsaw! <target> makes it WAY too much work! I'd basically have to hardcode it! Besides, spawning in whole structures is more exciting anyway!