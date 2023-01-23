#> minecraft_but.core:modifiers/random_teleport/main
# Main function for "Random Teleport" modifier
# Randomly teleport players
# @within minecraft_but.core:modifiers/directory
# @context root

# Roll to teleport allowed players
execute as @a[ tag=!minecraft_but.blacklist, tag=!minecraft_but.random_teleport.blacklist, tag=!global.ignore, gamemode=!spectator  ] at @s run function minecraft_but.core:modifiers/random_teleport/rand