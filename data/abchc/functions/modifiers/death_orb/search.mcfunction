#> abchc:modifiers/death_orb/search
#
# Search for players' unique, linked death orb
#
# @context player
#
# @within abchc:modifiers/death_orb/**

# Set .search to player's sid
scoreboard players operation .search abch.death_orb.sid = @s abch.death_orb.sid

# Add this tag to player to select the right player
# in case `@p` is not the right player
tag @s add abch.death_orb.this

# If death orb isn't found, give player 'spawn' tag which will spawn death orb
tag @s add abch.death_orb.spawn

# If there is a linked death orb, run actions
# with the death orb as `@s` and the player as `@p`
execute as @e[ name="abch.death_orb.marker", predicate=abchc:modifiers/death_orb/sid ] if score @s abch.death_orb.sid = .search abch.death_orb.sid run function abchc:modifiers/death_orb/actions
tag @s remove abch.death_orb.this