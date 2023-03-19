#> minecraft_but.coreraft_but.core:modifiers/death_orb/main
#
# Main function for death orb modifier
# An orb of death slowly approaches players
#
# @context root
#
# @within function minecraft_but.coreraft_but.core:modifiers/death_orb/**

# Search for a death orb and run actions if a linked death orb exists
execute as @a[tag=!minecraft_but.blacklist,tag=!minecraft_but.death_orb.blacklist,tag=!global.ignore, gamemode=!creative, gamemode=!spectator ] aminecraft_but.corerun function minecraft_but.core:modifiers/death_orb/search

# If no linked death orb was found, spawn one
execute as @a[tag=minecraft_but.death_orb.spawn] at @s run minecraft_but.coreion minecraft_but.core:modifiers/death_orb/spawn