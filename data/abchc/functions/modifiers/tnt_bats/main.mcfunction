#> abchc:modifiers/tnt_bats/main
# Main function for "TNT Bats" modifier
# Bats with TNT spawn
# @context root
# @within abchc:modifiers/directory
# @input
#   score tnt_bats.spawn abch.config
#       Whether to spawn new bats

#> Spawning mechanics
# I want to use both a manual and replacing spawning system
#> Replace Bats
execute as @e[ type=bat, tag=!abch.tnt_bats, tag=!global.ignore ] at @s run function abchc:modifiers/tnt_bats/replace_bat

#> Set TNT fuse 
execute as @e[ type=tnt, tag=abch.tnt_bats.tnt, tag=!abch.tnt_bats.detonated, tag=!global.ignore ] at @s if entity @a[ distance=..6, gamemode=!creative, gamemode=!spectator ] run function abchc:modifiers/tnt_bats/detonate

# If bat is gone (probably killed), detonate tnt
execute as @e[ type=tnt, tag=abch.tnt_bats.tnt, tag=!abch.tnt_bats.detonated, tag=!global.ignore ] at @s unless entity @e[type=bat,tag=abch.tnt_bats,distance=..1.5] run function abchc:modifiers/tnt_bats/detonate

#> Spawn new bats from non-bat entities
execute as @e[type=#aestd1:mobs,tag=!abch.tnt_bats.spawned, tag=!global.ignore] at @s unless entity @s[type=bat] unless entity @a[distance=..10] unless score tnt_bats.spawn abch.config matches 0 run function abchc:modifiers/tnt_bats/try_spawn

#> Replace other mobs
#execute as @e[ type=#aestd1:hostile, tag=!abch.tnt_bats.spawned, tag=!global.ignore ] at @s run function abchc:modifiers/tnt_bats/try_replace