scoreboard players set in abch.rng.math 1
scoreboard players set in1 abch.rng.math 3
function abchc:apis/rng/range

execute if score out abch.rng.math matches 1 run function abchc:modifiers/teleport_chorus/tp_overworld
execute if score out abch.rng.math matches 2 run function abchc:modifiers/teleport_chorus/tp_nether
execute if score out abch.rng.math matches 3 run function abchc:modifiers/teleport_chorus/tp_end