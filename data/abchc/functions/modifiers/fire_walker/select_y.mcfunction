#> abchc:modifiers/fire_walker/select_y
# Select Y position
# @within abchc:modifiers/fire_walker/main
# @context player

#> Decrement loop count
scoreboard players remove $loop abch.fire_walker 1

#> Get random bool for positive or negative
scoreboard players set $min random 0
scoreboard players set $max random 1
function random:uniform

#> Select between positive or negative
execute if score $out random matches 0 run function abchc:modifiers/fire_walker/y/negative
execute if score $out random matches 1 run function abchc:modifiers/fire_walker/y/positive

#> Try to continue loop
execute if score $loop abch.fire_walker matches 1.. run function abchc:modifiers/fire_walker/select_y