#> minecraft_but.core:modifiers/tnt_bats/try_replace
# Try to replace a bat with a TNT bat
# @context hostile mob
# @within minecraft_but.core:modifiers/tnt_bats/main

# If score is 1, 1% chance of spawning bats
execute if score tnt_bats.difficulty minecraft_but.config matches 1 if predicate minecraft_but.core:1pct unless entity @a[distance=..20] run function minecraft_but.core:modifiers/tnt_bats/spawn_bat

# If score is 2 or nothing, 5% chance of spawning bats
execute unless score tnt_bats.difficulty minecraft_but.config matches ..1 unless score tnt_bats.difficulty minecraft_but.config matches 3.. if predicate minecraft_but.core:5pct unless entity @a[distance=..20] run function minecraft_but.core:modifiers/tnt_bats/spawn_bat

# If score is 3, 15% of spawning bats
execute if score tnt_bats.difficulty minecraft_but.config matches 3.. if predicate minecraft_but.core:15pct unless entity @a[distance=..20] run function minecraft_but.core:modifiers/tnt_bats/spawn_bat

# Add tag to prevent further spawning
tag @s add minecraft_but.tnt_bats.spawned