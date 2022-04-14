scoreboard objectives add abch.lazy_inventory.rng.math dummy
scoreboard objectives add abch.lazy_inventory.rng.constant dummy
scoreboard players set #2 abch.lazy_inventory.rng.constant 2
scoreboard players set #1000 abch.lazy_inventory.rng.constant 1000
scoreboard players set #10000 abch.lazy_inventory.rng.constant 10000
scoreboard players set #lcg abch.lazy_inventory.rng.constant 1103515245

function abchc:modifiers/lazy_inventory/rng/zprivate/init