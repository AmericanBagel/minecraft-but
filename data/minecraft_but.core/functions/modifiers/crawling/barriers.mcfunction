#> minecraft_but.coreraft_but.core:modifiers/crawling/barriers
#
# Place barriers around player
#
# @within minecraft_but.coreraft_but.core:modifiers/crawling/main
#
# @context player

execute positioned ~ ~ ~ run function minecraft_but.coreraft_but.core:modifiers/crawling/barrier
execute positioned ~ ~ ~1 run function minecraft_but.coreraft_but.core:modifiers/crawling/barrier
execute positioned ~ ~ ~-1 run function minecraft_but.coreraft_but.core:modifiers/crawling/barrier
execute positioned ~1 ~ ~ run function minecraft_but.coreraft_but.core:modifiers/crawling/barrier
execute positioned ~-1 ~ ~ run function minecraft_but.coreraft_but.core:modifiers/crawling/barrier
execute positioned ~1 ~ ~1 run function minecraft_but.coreraft_but.core:modifiers/crawling/barrier
execute positioned ~1 ~ ~-1 run function minecraft_but.coreraft_but.core:modifiers/crawling/barrier
execute positioned ~-1 ~ ~1 run function minecraft_but.coreraft_but.core:modifiers/crawling/barrier
execute positioned ~-1 ~ ~-1 run function minecraft_but.coreraft_but.core:modifiers/crawling/barrier