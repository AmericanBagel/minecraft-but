#> abchc:apis/rng/init
# Init
# @within abchc:load

scoreboard objectives add abch.rng.math dummy
scoreboard objectives add abch.rng.constant dummy
scoreboard players set #2 abch.rng.constant 2
scoreboard players set #1000 abch.rng.constant 1000
scoreboard players set #10000 abch.rng.constant 10000
scoreboard players set #lcg abch.rng.constant 1103515245

function abchc:apis/rng/zprivate/init