#> abchc:apis/rng/zprivate/next_int
# @within abchc:apis/rng/**

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

function abchc:apis/rng/lcg

scoreboard players operation #temp abch.rng.math = out abch.rng.math
scoreboard players operation out abch.rng.math %= #range abch.rng.math
scoreboard players operation #temp abch.rng.math -= out abch.rng.math
scoreboard players operation #temp abch.rng.math += #m1 abch.rng.math
execute if score #temp abch.rng.math matches ..-1 run function abchc:apis/rng/zprivate/next_int