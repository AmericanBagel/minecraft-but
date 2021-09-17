### Cloud Notes ###
# Newton-Raphson, 4 iterations approach
#
# in = lower range
# in1 = upper range
# out = random number between range


scoreboard players add abch_vsIn1 abch_vsMath 1
scoreboard players operation #range abch_vsMath = abch_vsIn1 abch_vsMath
scoreboard players operation #range abch_vsMath -= abch_vsIn abch_vsMath

scoreboard players operation #m1 abch_vsMath = #range abch_vsMath
scoreboard players remove abch_vsM1 abch_vsMath 1
function abchc:modifiers/vengeful_slimes/rng/zprivate/next_int
scoreboard players operation abch_vsOut abch_vsMath += abch_vsIn abch_vsMath

scoreboard players reset abch_vsM1 abch_vsMath
scoreboard players remove abch_vsIn1 abch_vsMath 1