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

function abchc:modifiers/vengeful_slimes/rng/lcg

scoreboard players operation abch.vsTemp abch.vsMath = abch.vsOut abch.vsMath
scoreboard players operation abch.vsOut abch.vsMath %= abch.vsRange abch.vsMath
scoreboard players operation abch.vsTemp abch.vsMath -= abch.vsOut abch.vsMath
scoreboard players operation abch.vsTemp abch.vsMath += abch.vsM1 abch.vsMath
execute if score abch.vsTemp abch.vsMath matches ..-1 run function abchc:modifiers/vengeful_slimes/rng/zprivate/next_int


tag @s add abch.hasID
scoreboard players operation @s abch.vsID = abch.vsLCG abch.vsMath