#> abchc:modifiers/death_orb/spawn
#
# Spawn the death orb and link it to player
#
# @within abchc:modifiers/death_orb/**
#
# @context player

# Remove fail tag


# Give player init tag for efficient ID linking
tag @p add abch.death_orb.init

# Summon death orb
summon marker ~ ~ ~ {Tags:["global.ignore", "abch", "abch.death_orb", "abch.death_orb.marker", "abch.death_orb.init"],CustomName:'{"text":"abch.death_orb.marker"}'}

# Move the death orb away from the player
spreadplayers ~ ~ 30 60 false @e[ name="abch.death_orb.marker", tag=abch.death_orb.init ]

## ID Linking
# Add to global death orb count
scoreboard players add .global abch.death_orb.sid 1

# Set death orb's ID to the current global death orb count (for a unique ID shared with the player)
scoreboard players operation @e[ name="abch.death_orb.marker", sort=nearest, limit=1, tag=abch.death_orb.init ] abch.death_orb.sid = .global abch.death_orb.sid

# Set the player's ID to the current global death orb count (for a unique ID shared with the death orb)
scoreboard players operation @p[ tag=abch.death_orb.init ] abch.death_orb.sid = .global abch.death_orb.sid

# Remove init tag
tag @e[ tag=abch.death_orb.init ] remove abch.death_orb.init