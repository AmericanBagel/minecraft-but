scoreboard players set $min random 1
scoreboard players set $max random 9

function random:uniform

scoreboard players operation @s minecraft_but.deadly_colors.color = $out random