execute unless score @s abch.superhot.x = @s abch.superhot.nx run function abchc:modifiers/superhot/move
execute unless score @s abch.superhot.y = @s abch.superhot.ny run function abchc:modifiers/superhot/move
execute unless score @s abch.superhot.z = @s abch.superhot.nz run function abchc:modifiers/superhot/move

execute if score @s abch.superhot.x = @s abch.superhot.nx if score @s abch.superhot.y = @s abch.superhot.ny if score @s abch.superhot.z = @s abch.superhot.nz run function abchc:modifiers/superhot/still