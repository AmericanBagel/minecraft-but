#> abchc:modifiers/teleport_chorus/check
# Function run by abchc:modifiers/teleport_chorus/eat_chorus_fruit
# which checks if the data pack is enabled and revokes the
# advancement so it can be used again

scoreboard players reset $bool abch.teleport_chorus
advancement revoke @s only abchc:modifiers/teleport_chorus/eat_chorus_fruit
execute if score teleport_chorus abch.toggle matches 1.. run function abchc:modifiers/teleport_chorus/teleport