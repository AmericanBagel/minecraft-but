scoreboard objectives add abch.unstable_inv.rng.math dummy
scoreboard objectives add abch.unstable_inv.rng.constant dummy
scoreboard players set #2 abch.unstable_inv.rng.constant 2
scoreboard players set #1000 abch.unstable_inv.rng.constant 1000
scoreboard players set #10000 abch.unstable_inv.rng.constant 10000
scoreboard players set #lcg abch.unstable_inv.rng.constant 1103515245

function abchc:modifiers/unstable_inv/rng/zprivate/init