#> minecraft_but.core:modifiers/death_orb/spawn
#
# Spawn the death orb and link it to player
#
# @within minecraft_but.core:modifiers/death_orb/**
#
# @context player

# Remove fail tag


# Give player init tag for efficient ID linking
tag @p add minecraft_but.death_orb.init

# Summon death orb
summon marker ~ ~ ~ {Tags:["global.ignore", "minecraft_but", "minecraft_but.death_orb", "minecraft_but.death_orb.marker", "minecraft_but.death_orb.init"],CustomName:'{"text":"minecraft_but.death_orb.marker"}'}

# Move the death orb away from the player
spreadplayers ~ ~ 150 200 false @e[ name="minecraft_but.death_orb.marker", tag=minecraft_but.death_orb.init ]

## ID Linking
# Add to global death orb count
scoreboard players add .global minecraft_but.death_orb.sid 1

# Set death orb's ID to the current global death orb count (for a unique ID shared with the player)
scoreboard players operation @e[ name="minecraft_but.death_orb.marker", sort=nearest, limit=1, tag=minecraft_but.death_orb.init ] minecraft_but.death_orb.sid = .global minecraft_but.death_orb.sid

# Set the player's ID to the current global death orb count (for a unique ID shared with the death orb)
scoreboard players operation @p[ tag=minecraft_but.death_orb.init ] minecraft_but.death_orb.sid = .global minecraft_but.death_orb.sid

# Remove init tag
tag @e[ tag=minecraft_but.death_orb.init ] remove minecraft_but.death_orb.init