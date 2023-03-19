#> minecraft_but.core:modifiers/chunk_error/error
# Destroy chunk and kill marker
# @context as at marker
function minecraft_but.core:modifiers/chunk_error/error_sound

execute as @e[ type=armor_stand, name="minecraft_but.chunk_error.marker" ] at @s run function minecraft_but.core:modifiers/chunk_error/error_sound
fill ~15 319 ~15 ~ 269 ~ air
fill ~15 269 ~15 ~ 219 ~ air
fill ~15 269 ~15 ~ 169 ~ air
fill ~15 169 ~15 ~ 150 ~ air
fill ~15 149 ~15 ~ 50 ~ air
fill ~15 49 ~15 ~ -63 ~ air
fill ~15 -64 ~15 ~ -64 ~ air

kill @s