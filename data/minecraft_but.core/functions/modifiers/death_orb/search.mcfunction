#> minecraft_but.core:modifiers/death_orb/search
#
# Search for players' unique, linked death orb
#
# @context player
#
# @within minecraft_but.core:modifiers/death_orb/**

# Set .search to player's sid
scoreboard players operation .search minecraft_but.death_orb.sid = @s minecraft_but.death_orb.sid

# Add this tag to player to select the right player
# in case `@p` is not the right player
tag @s add minecraft_but.death_orb.this

# If death orb isn't found, give player 'spawn' tag which will spawn death orb
tag @s add minecraft_but.death_orb.spawn

# If there is a linked death orb, run actions
# with the death orb as `@s` and the player as `@p`
# Distance 0.. to make death orb work across dimensions
execute as @e[ name="minecraft_but.death_orb.marker", predicate=minecraft_but.core:modifiers/death_orb/sid, distance=0.. ] if score @s minecraft_but.death_orb.sid = .search minecraft_but.death_orb.sid run function minecraft_but.core:modifiers/death_orb/actions
tag @s remove minecraft_but.death_orb.this