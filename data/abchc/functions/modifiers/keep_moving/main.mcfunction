#> abchc:modifiers/keep_moving/main
# Main function file for 'Keep Moving' modifier
# Still players are damaged, moving players regenerate
# @context root
# @within abchc:modifiers/directory

# Compare current position to past position with bias towards movement
execute as @a[ tag=!blacklist, tag=!global.ignore, tag=!abch.keep_moving.blacklist ] at @s run function abchc:modifiers/keep_moving/check