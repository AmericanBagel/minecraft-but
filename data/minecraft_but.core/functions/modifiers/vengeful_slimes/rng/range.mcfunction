### Cloud Notes ###
# Newton-Raphson, 4 iterations approach
#
# in = lower range
# in1 = upper range
# out = random number between range


scoreboard players add minecraft_but.vsIn1 minecraft_but.vsMath 1
scoreboard players operation #range minecraft_but.vsMath = minecraft_but.vsIn1 minecraft_but.vsMath
scoreboard players operation #range minecraft_but.vsMath -= minecraft_but.vsIn minecraft_but.vsMath

scoreboard players operation #m1 minecraft_but.vsMath = #range minecraft_but.vsMath
scoreboard players remove minecraft_but.vsM1 minecraft_but.vsMath 1
function minecraft_but.core:modifiers/vengeful_slimes/rng/zprivate/next_int
scoreboard players operation minecraft_but.vsOut minecraft_but.vsMath += minecraft_but.vsIn minecraft_but.vsMath

scoreboard players reset minecraft_but.vsM1 minecraft_but.vsMath
scoreboard players remove minecraft_but.vsIn1 minecraft_but.vsMath 1