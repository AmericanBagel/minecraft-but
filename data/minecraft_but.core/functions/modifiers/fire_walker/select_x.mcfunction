#> minecraft_but.core:modifiers/fire_walker/select_x
# Select x position
# @within minecraft_but.core:modifiers/fire_walker/main
# @context player

#> Get random bool for positive or negative
scoreboard players set $min random 0
scoreboard players set $max random 1
function random:uniform

#> Select between positive or negative
execute if score $out random matches 0 run function minecraft_but.core:modifiers/fire_walker/x/negative
execute if score $out random matches 1 run function minecraft_but.core:modifiers/fire_walker/x/positive