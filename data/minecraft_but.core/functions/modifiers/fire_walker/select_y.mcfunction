#> minecraft_but.coreraft_but.core:modifiers/fire_walker/select_y
# Select Y position
# @within minecraft_but.coreraft_but.core:modifiers/fire_walker/main
# @context player

#> Decrement loop count
scoreboard players remove $loop minecraft_but.fire_walker 1

#> Get random bool for positive or negative
scoreboard players set $min random 0
scoreboard players set $max random 1
function random:uniform

#> Select between positive or negative
execute if score $out random matches 0 run function minecraft_but.coreraft_but.core:modifiers/fire_walker/y/negative
execute if score $out random matches 1 run function minecraft_but.coreraft_but.core:modifiers/fire_walker/y/positive

#> Try to continue loop
execute if score $loop minecraft_but.fire_walker matches 1.. run minecraft_but.coreion minecraft_but.core:modifiers/fire_walker/select_y