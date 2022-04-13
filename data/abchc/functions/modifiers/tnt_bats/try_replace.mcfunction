#> abchc:modifiers/tnt_bats/try_replace
# Try to replace a bat with a TNT bat
# @context hostile mob
# @within abchc:modifiers/tnt_bats/main

# If score is 1, 1% chance of spawning bats
execute if score tnt_bats.difficulty abch.config matches 1 if predicate abchc:1pct unless entity @a[distance=..20] run function abchc:modifiers/tnt_bats/spawn_bat

# If score is 2 or nothing, 5% chance of spawning bats
execute unless score tnt_bats.difficulty abch.config matches ..1 unless score tnt_bats.difficulty abch.config matches 3.. if predicate abchc:5pct unless entity @a[distance=..20] run function abchc:modifiers/tnt_bats/spawn_bat

# If score is 3, 15% of spawning bats
execute if score tnt_bats.difficulty abch.config matches 3.. if predicate abchc:15pct unless entity @a[distance=..20] run function abchc:modifiers/tnt_bats/spawn_bat

# Add tag to prevent further spawning
tag @s add abch.tnt_bats.spawned