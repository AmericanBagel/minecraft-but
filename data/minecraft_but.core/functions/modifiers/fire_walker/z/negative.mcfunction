#> minecraft_but.core:modifiers/fire_walker/z/negative
# Set position to random negative Z coordinates

#> Get Y
function minecraft_but.core:modifiers/fire_walker/get_block

#> Set position based on random number
execute if score $out random matches 1 positioned ~ ~ ~ run function minecraft_but.core:modifiers/fire_walker/fire
execute if score $out random matches 2 positioned ~ ~ ~-1 run function minecraft_but.core:modifiers/fire_walker/fire
execute if score $out random matches 3 positioned ~ ~ ~-2 run function minecraft_but.core:modifiers/fire_walker/fire
execute if score $out random matches 4 positioned ~ ~ ~-3 run function minecraft_but.core:modifiers/fire_walker/fire
execute if score $out random matches 5 positioned ~ ~ ~-4 run function minecraft_but.core:modifiers/fire_walker/fire
execute if score $out random matches 6 positioned ~ ~ ~-6 run function minecraft_but.core:modifiers/fire_walker/fire