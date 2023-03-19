execute unless score @s minecraft_but.superhot.x = @s minecraft_but.superhot.nx run function minecraft_but.core:modifiers/superhot/move
execute unless score @s minecraft_but.superhot.y = @s minecraft_but.superhot.ny run function minecraft_but.core:modifiers/superhot/move
execute unless score @s minecraft_but.superhot.z = @s minecraft_but.superhot.nz run function minecraft_but.core:modifiers/superhot/move

execute if score @s minecraft_but.superhot.x = @s minecraft_but.superhot.nx if score @s minecraft_but.superhot.y = @s minecraft_but.superhot.ny if score @s minecraft_but.superhot.z = @s minecraft_but.superhot.nz run function minecraft_but.core:modifiers/superhot/still