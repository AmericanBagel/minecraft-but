#> abchc:modifiers/tnt_rain/rain
# Spawn the tnts
# @context tnt marker
# @within abchc:modifiers/tnt_rain

# Note: I hardcoded it because, for some reason,
# changing the Motion tag of a falling block
# after spawning it is really glitchy and weird
# looking, so I just hardcoded it.

#> Get random number
scoreboard players set $min random 1
scoreboard players set $min random 60
function random:uniform

#> tnt selction tree
execute if score $out random matches 1..12 run function abchc:modifiers/tnt_rain/tnt/1
execute if score $out random matches 13..24 run function abchc:modifiers/tnt_rain/tnt/2
execute if score $out random matches 25..36 run function abchc:modifiers/tnt_rain/tnt/3
execute if score $out random matches 37..48 run function abchc:modifiers/tnt_rain/tnt/4
execute if score $out random matches 49..60 run function abchc:modifiers/tnt_rain/tnt/5