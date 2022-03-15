#> abchc:modifiers/teleport_chorus/teleport
# Teleport player to another dimension
#particle reverse_portal ~ ~.5 ~ 0.5 0.5 0.5 0.2 30 force
#playsound entity.enderman.teleport player @s ~ ~ ~ 2 1
#spreadplayers ~ ~ 5 25 false @s
#execute at @s run particle portal ~ ~.5 ~ 0.5 0.5 0.5 0.2 30 force
#execute at @s run playsound entity.enderman.teleport player @s ~ ~ ~ 2 1

scoreboard players set in abch.rng.math 1
scoreboard players set in1 abch.rng.math 2
function abchc:apis/rng/range

# If in overworld
execute if entity @s[nbt={Dimension:"minecraft:overworld"}] if score out abch.rng.math matches 1 unless score $bool abch.teleport_chorus matches 1 run function abchc:modifiers/teleport_chorus/tp_nether
execute if entity @s[nbt={Dimension:"minecraft:overworld"}] if score out abch.rng.math matches 2 unless score $bool abch.teleport_chorus matches 1 run function abchc:modifiers/teleport_chorus/tp_end

# If in nether
execute if entity @s[nbt={Dimension:"minecraft:the_nether"}] if score out abch.rng.math matches 1 unless score $bool abch.teleport_chorus matches 1 run function abchc:modifiers/teleport_chorus/tp_overworld
execute if entity @s[nbt={Dimension:"minecraft:the_nether"}] if score out abch.rng.math matches 2 unless score $bool abch.teleport_chorus matches 1 run function abchc:modifiers/teleport_chorus/tp_end

# If in end
execute if entity @s[nbt={Dimension:"minecraft:the_end"}] if score out abch.rng.math matches 1 unless score $bool abch.teleport_chorus matches 1 run function abchc:modifiers/teleport_chorus/tp_overworld
execute if entity @s[nbt={Dimension:"minecraft:the_end"}] if score out abch.rng.math matches 2 unless score $bool abch.teleport_chorus matches 1 run function abchc:modifiers/teleport_chorus/tp_nether

# If in custom dimension
#execute if entity @s[nbt=!{Dimension:"minecraft:overworld"},nbt=!{Dimension:"minecraft:the_nether"},nbt=!{Dimension:"minecraft:the_end"}] run function abchc:modifiers/teleport_chorus/other_dimension