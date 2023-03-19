scoreboard players set $min random 1
scoreboard players set $max random 9

function random:uniform

scoreboard players operation @s abch.deadly_colors.color = $out random