#> abchc:modifiers/death_orb/main
#
# Main function for death orb modifier
# An orb of death slowly approaches players
#
# @context root
#
# @within function abchc:modifiers/death_orb/**

# Search for a death orb and run actions if a linked death orb exists
execute as @a[tag=!abch.blacklist,tag=!abch.death_orb.blacklist,tag=!global.ignore, gamemode=!creative, gamemode=!spectator ] at @s run function abchc:modifiers/death_orb/search

# If no linked death orb was found, spawn one
execute as @a[tag=abch.death_orb.spawn] at @s run function abchc:modifiers/death_orb/spawn