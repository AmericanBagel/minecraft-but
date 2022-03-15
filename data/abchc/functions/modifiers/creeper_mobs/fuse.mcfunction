#> abchc:modifiers/creeper_mobs/fuse
# Tick down fuse for the mob
# @within abchc:modifiers/creeper_mobs/main
# @context mob

scoreboard players add @s abch.creeper_mobs.fuse 1

execute if score @s abch.creeper_mobs.fuse matches 1 run particle smoke ~ ~.5 ~ 0.5 0.5 0.5 0.075 20 normal

execute if score @s abch.creeper_mobs.fuse matches 2..5 if predicate abchc:15pct run particle smoke ~ ~.5 ~ 0.5 0.5 0.5 0.05 3 normal
execute if score @s abch.creeper_mobs.fuse matches 6..10 if predicate abchc:15pct run particle smoke ~ ~.5 ~ 0.5 0.5 0.5 0.05 5 normal
execute if score @s abch.creeper_mobs.fuse matches 1..15 if predicate abchc:15pct run particle smoke ~ ~.5 ~ 0.5 0.5 0.5 0.05 12 normal
execute if score @s abch.creeper_mobs.fuse matches 16..20 if predicate abchc:15pct run particle large_smoke ~ ~.5 ~ 0.5 0.5 0.5 0.05 16 normal
execute if score @s abch.creeper_mobs.fuse matches 21..25 if predicate abchc:15pct run particle large_smoke ~ ~.5 ~ 0.5 0.5 0.5 0.05 20 normal
execute if score @s abch.creeper_mobs.fuse matches 26..30 if predicate abchc:15pct run particle large_smoke ~ ~.5 ~ 0.5 0.5 0.5 0.05 25 normal