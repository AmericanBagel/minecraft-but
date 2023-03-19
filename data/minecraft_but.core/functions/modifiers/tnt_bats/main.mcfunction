#> minecraft_but.core:modifiers/tnt_bats/main
# Main function for "TNT Bats" modifier
# Bats with TNT spawn
# @context root
# @within minecraft_but.core:modifiers/directory
# @input
#   score tnt_bats.spawn minecraft_but.config
#       Whether to spawn new bats

#> Spawning mechanics
# I want to use both a manual and replacing spawning system
#> Replace Bats
execute as @e[ type=bat, tag=!minecraft_but.tnt_bats, tag=!global.ignore ] at @s run function minecraft_but.core:modifiers/tnt_bats/replace_bat

#> Set TNT fuse 
execute as @e[ type=tnt, tag=minecraft_but.tnt_bats.tnt, tag=!minecraft_but.tnt_bats.detonated, tag=!global.ignore ] at @s if entity @a[ distance=..6, gamemode=!creative, gamemode=!spectator ] run function minecraft_but.core:modifiers/tnt_bats/detonate

# If bat is gone (probably killed), detonate tnt
execute as @e[ type=tnt, tag=minecraft_but.tnt_bats.tnt, tag=!minecraft_but.tnt_bats.detonated, tag=!global.ignore ] at @s unless entity @e[type=bat,tag=minecraft_but.tnt_bats,distance=..1.5] run function minecraft_but.core:modifiers/tnt_bats/detonate

#> Spawn new bats from non-bat entities
execute as @e[type=#aestd1:mobs,tag=!minecraft_but.tnt_bats.spawned, tag=!global.ignore] at @s unless entity @s[type=bat] unless entity @a[distance=..10] unless score tnt_bats.spawn minecraft_but.config matches 0 run function minecraft_but.core:modifiers/tnt_bats/try_spawn

#> Replace other mobs
#execute as @e[ type=#aestd1:hostile, tag=!minecraft_but.tnt_bats.spawned, tag=!global.ignore ] at @s run function minecraft_but.core:modifiers/tnt_bats/try_replace