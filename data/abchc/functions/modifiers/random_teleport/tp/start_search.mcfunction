#> abchc:modifiers/random_teleport/tp/start_search
# Start searching for open space to teleport to,
# basically a spreadplayers which doesn't always
# bring entities to the highest block.
#
# The issue with spreadplayer's highest-block behavior
# is that always teleporting players up to the
# highest block would make caving essentially impossible.
#
# @within abchc:modifiers/random_teleport/tp/tp_init
# @context player

# Summon marker to manipulate its Pos randomly
summon marker ~ ~20 ~ {Tags: [ "abch", "abch.random_teleport", "abch.random_teleport.marker" ]}

#> Store pos
# Store marker's X pos
execute as @e[ tag=abch.random_teleport.marker ] store result score $x abch.random_teleport run data get entity @s Pos[0]

# Store marker's Z pos
execute as @e[ tag=abch.random_teleport.marker ] store result score $z abch.random_teleport run data get entity @s Pos[2]

#> Get variables
# Set minimum radius to radius config
scoreboard players operation $rmin abch.random_teleport = random_teleport.radius abch.config
# Multiply minimum radius by -1 (e.g. 16 * -1 = -16)
scoreboard players operation $rmin abch.random_teleport *= #-1 abch.math

# Set maximum radius to radius config
scoreboard players operation $rmax abch.random_teleport = random_teleport.radius abch.config

#> Get offsets
# Get random number for X pos between 1 and 16
scoreboard players operation in abch.rng.math = $rmin abch.random_teleport
scoreboard players operation in1 abch.rng.math = $rmax abch.random_teleport
function abchc:apis/rng/range
# Store offset into score
scoreboard players operation $x_offset abch.random_teleport = out abch.rng.math

# Get random number for Z pos between -16 and 16 (32 total)
scoreboard players set in abch.rng.math -16
scoreboard players set in1 abch.rng.math 16
function abchc:apis/rng/range
scoreboard players operation $z_offset abch.random_teleport = out abch.rng.math

#> Apply offsets
# Add X and Z offsets to pos score
scoreboard players operation $x abch.random_teleport += $x_offset abch.random_teleport
scoreboard players operation $z abch.random_teleport += $z_offset abch.random_teleport

# Apply score to Pos data
execute as @e[ tag=abch.random_teleport.marker ] store result entity @s Pos[0] double 1 run scoreboard players get $x abch.random_teleport
execute as @e[ tag=abch.random_teleport.marker ] store result entity @s Pos[2] double 1 run scoreboard players get $z abch.random_teleport

#> Search for ground
# Check if marker is already on solid ground
execute at @e[ tag=abch.random_teleport.marker ] if block ~ ~-1 ~ #aestd1:all_but_air if block ~ ~ ~ #aestd1:air if block ~ ~1 ~ #aestd1:air run scoreboard players set $grounded abch.random_teleport 1

# If grounded, tp
execute at @e[ tag=abch.random_teleport.marker ] if score $grounded abch.random_teleport matches 1 run function abchc:modifiers/random_teleport/tp/tp

#> If not grounded, search down
execute at @e[ tag=abch.random_teleport.marker ] unless score $grounded abch.random_teleport matches 1 run function abchc:modifiers/random_teleport/tp/start_down