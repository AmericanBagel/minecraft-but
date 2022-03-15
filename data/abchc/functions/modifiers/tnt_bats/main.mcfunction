#> abchc:modifiers/tnt_bats/main
# Main function for "TNT Bats" modifier
# Bats with TNT spawn
# @context root
# @within abchc:modifiers/directory

#> Spawning mechanics
# I want to use both a manual and replacing spawning system
#> Replace Bats
execute as @e[ type=bat, tag=!abch.tnt_bats ] at @s run function abchc:modifiers/tnt_bats/replace_bat

#> Set TNT fuse 
execute as @e[ type=tnt, tag=abch.tnt_bats.tnt, tag=!abch.tnt_bats.detonated ] at @s if entity @a[ distance=..6, gamemode=!creative, gamemode=!spectator ] run function abchc:modifiers/tnt_bats/detonate

#> Replace other mobs
execute as @e[ type=#aestd1:hostile, tag=!abch.tnt_bats.spawned, tag=!global.ignore ] at @s run function abchc:modifiers/tnt_bats/try_spawn