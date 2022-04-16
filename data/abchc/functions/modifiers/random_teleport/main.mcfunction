#> abchc:modifiers/random_teleport/main
# Main function for "Random Teleport" modifier
# Randomly teleport players
# @within abchc:modifiers/directory
# @context root

# Roll to teleport allowed players
execute as @a[ tag=!abch.blacklist, tag=!abch.random_teleport.blacklist, tag=!global.ignore, gamemode=!spectator  ] at @s run function abchc:modifiers/random_teleport/rand