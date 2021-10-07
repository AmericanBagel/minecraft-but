### Cloud Notes ###
# Newton-Raphson, 4 iterations approach
#
# in = lower range
# in1 = upper range
# out = random number between range


scoreboard players add abch.vsIn1 abch.vsMath 1
scoreboard players operation #range abch.vsMath = abch.vsIn1 abch.vsMath
scoreboard players operation #range abch.vsMath -= abch.vsIn abch.vsMath

scoreboard players operation #m1 abch.vsMath = #range abch.vsMath
scoreboard players remove abch.vsM1 abch.vsMath 1
function abchc:modifiers/vengeful_slimes/rng/zprivate/next_int
scoreboard players operation abch.vsOut abch.vsMath += abch.vsIn abch.vsMath

scoreboard players reset abch.vsM1 abch.vsMath
scoreboard players remove abch.vsIn1 abch.vsMath 1