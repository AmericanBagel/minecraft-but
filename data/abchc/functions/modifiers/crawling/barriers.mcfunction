#> abchc:modifiers/crawling/barriers
#
# Place barriers around player
#
# @within abchc:modifiers/crawling/main
#
# @context player

execute positioned ~ ~ ~ run function abchc:modifiers/crawling/barrier
execute positioned ~ ~ ~1 run function abchc:modifiers/crawling/barrier
execute positioned ~ ~ ~-1 run function abchc:modifiers/crawling/barrier
execute positioned ~1 ~ ~ run function abchc:modifiers/crawling/barrier
execute positioned ~-1 ~ ~ run function abchc:modifiers/crawling/barrier
execute positioned ~1 ~ ~1 run function abchc:modifiers/crawling/barrier
execute positioned ~1 ~ ~-1 run function abchc:modifiers/crawling/barrier
execute positioned ~-1 ~ ~1 run function abchc:modifiers/crawling/barrier
execute positioned ~-1 ~ ~-1 run function abchc:modifiers/crawling/barrier