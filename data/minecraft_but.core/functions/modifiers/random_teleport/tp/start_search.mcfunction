#> minecraft_but.core:modifiers/random_teleport/tp/start_search
# Start searching for open space to teleport to,
# basically a spreadplayers which doesn't always
# bring entities to the highest block.
#
# The issue with spreadplayer's highest-block behavior
# is that always teleporting players up to the
# highest block would make caving essentially impossible.
#
# @within minecraft_but.core:modifiers/random_teleport/tp/tp_init
# @context player

# Summon marker to manipulate its Pos randomly
summon marker ~ ~20 ~ {Tags: [ "minecraft_but", "minecraft_but.random_teleport", "minecraft_but.random_teleport.marker" ]}

#> Store pos
# Store marker's X pos
execute as @e[ tag=minecraft_but.random_teleport.marker ] store result score $x minecraft_but.random_teleport run data get entity @s Pos[0]

# Store marker's Z pos
execute as @e[ tag=minecraft_but.random_teleport.marker ] store result score $z minecraft_but.random_teleport run data get entity @s Pos[2]

#> Get variables
# Set minimum radius to radius config
scoreboard players operation $rmin minecraft_but.random_teleport = random_teleport.radius minecraft_but.config
# Multiply minimum radius by -1 (e.g. 16 * -1 = -16)
scoreboard players operation $rmin minecraft_but.random_teleport *= #-1 minecraft_but.math

# Set maximum radius to radius config
scoreboard players operation $rmax minecraft_but.random_teleport = random_teleport.radius minecraft_but.config

#> Get offsets
# Get random number for X pos between 1 and 16
scoreboard players operation $min random = $rmin minecraft_but.random_teleport
scoreboard players operation $max random = $rmax minecraft_but.random_teleport
function random:uniform
# Store offset into score
scoreboard players operation $x_offset minecraft_but.random_teleport = $out random

# Get random number for Z pos between -16 and 16 (32 total)
scoreboard players set $min random -16
scoreboard players set $max random 16
function random:uniform
scoreboard players operation $z_offset minecraft_but.random_teleport = $out random

#> Apply offsets
# Add X and Z offsets to pos score
scoreboard players operation $x minecraft_but.random_teleport += $x_offset minecraft_but.random_teleport
scoreboard players operation $z minecraft_but.random_teleport += $z_offset minecraft_but.random_teleport

# Apply score to Pos data
execute as @e[ tag=minecraft_but.random_teleport.marker ] store result entity @s Pos[0] double 1 run scoreboard players get $x minecraft_but.random_teleport
execute as @e[ tag=minecraft_but.random_teleport.marker ] store result entity @s Pos[2] double 1 run scoreboard players get $z minecraft_but.random_teleport

#> Search for ground
# Check if marker is already on solid ground
execute at @e[ tag=minecraft_but.random_teleport.marker ] if block ~ ~-1 ~ #aestd1:all_but_air if block ~ ~ ~ #aestd1:air if block ~ ~1 ~ #aestd1:air run scoreboard players set $grounded minecraft_but.random_teleport 1

# If grounded, tp
execute at @e[ tag=minecraft_but.random_teleport.marker ] if score $grounded minecraft_but.random_teleport matches 1 run function minecraft_but.core:modifiers/random_teleport/tp/tp

#> If not grounded, search down
execute at @e[ tag=minecraft_but.random_teleport.marker ] unless score $grounded minecraft_but.random_teleport matches 1 run function minecraft_but.core:modifiers/random_teleport/tp/start_down