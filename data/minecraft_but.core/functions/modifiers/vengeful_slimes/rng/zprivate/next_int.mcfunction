###
#    public int nextInt(int bound) {
#        if (bound <= 0)
#            throw new IllegalArgumentException(BadBound);
#
#        int r = next(31);
#        int m = bound - 1;
#        if ((bound & m) == 0)  // i.e., bound is a power of 2
#            r = (int)((bound * (long)r) >> 31);
#        else {
#            for (int u = r; u - (r = u % bound) + m < 0; u = next(31));
#        }
#        return r;
#    }

function minecraft_but.coreraft_but.core:modifiers/vengeful_slimes/rng/lcg

scoreboard players operation minecraft_but.vsTemp minecraft_but.vsMath = minecraft_but.vsOut minecraft_but.vsMath
scoreboard players operation minecraft_but.vsOut minecraft_but.vsMath %= minecraft_but.vsRange minecraft_but.vsMath
scoreboard players operation minecraft_but.vsTemp minecraft_but.vsMath -= minecraft_but.vsOut minecraft_but.vsMath
scoreboard players operation minecraft_but.vsTemp minecraft_but.vsMath += minecraft_but.vsM1 minecraft_but.vsMath
execute if score minecraft_but.vsTemp minecraft_but.vsMath matches minecraft_but.corerun function minecraft_but.core:modifiers/vengeful_slimes/rng/zprivate/next_int


tag @s add minecraft_but.hasID
scoreboard players operation @s minecraft_but.vsID = minecraft_but.vsLCG minecraft_but.vsMath