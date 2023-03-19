scoreboard objectives add minecraft_but.lazy_inventory.rng.math dummy
scoreboard objectives add minecraft_but.lazy_inventory.rng.constant dummy
scoreboard players set #2 minecraft_but.lazy_inventory.rng.constant 2
scoreboard players set #1000 minecraft_but.lazy_inventory.rng.constant 1000
scoreboard players set #10000 minecraft_but.lazy_inventory.rng.constant 10000
scoreboard players set #lcg minecraft_but.lazy_inventory.rng.constant 1103515245

function minecraft_but.coreraft_but.core:modifiers/lazy_inventory/rng/zprivate/init