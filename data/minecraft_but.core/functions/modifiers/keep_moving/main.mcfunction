#> minecraft_but.core:modifiers/keep_moving/main
# Main function file for 'Keep Moving' modifier
# Still players are damaged, moving players regenerate
# @context root
# @within minecraft_but.core:modifiers/directory

# Compare current position to past position with bias towards movement
execute as @a[ tag=!minecraft_but.blacklist, tag=!global.ignore, tag=!minecraft_but.keep_moving.blacklist, gamemode=!creative, gamemode=!spectator  ] at @s run function minecraft_but.core:modifiers/keep_moving/check