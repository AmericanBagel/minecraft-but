#> abchc:modifiers/tnt_rain/rain
# Spawn the tnts
# @context tnt marker
# @within abchc:modifiers/tnt_rain

# Note: I hardcoded it because, for some reason,
# changing the Motion tag of a falling block
# after spawning it is really glitchy and weird
# looking, so I just hardcoded it.

#> Get random number
scoreboard players set in abch.rng.math 1
scoreboard players set in abch.rng.math 60
function abchc:apis/rng/range

#> tnt selction tree
execute if score out abch.rng.math matches 1..12 run function abchc:modifiers/tnt_rain/tnt/1
execute if score out abch.rng.math matches 13..24 run function abchc:modifiers/tnt_rain/tnt/2
execute if score out abch.rng.math matches 25..36 run function abchc:modifiers/tnt_rain/tnt/3
execute if score out abch.rng.math matches 37..48 run function abchc:modifiers/tnt_rain/tnt/4
execute if score out abch.rng.math matches 49..60 run function abchc:modifiers/tnt_rain/tnt/5