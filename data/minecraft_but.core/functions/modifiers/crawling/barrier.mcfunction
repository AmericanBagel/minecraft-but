#> minecraft_but.core:modifiers/crawling/barrier
#
# Function which places barrier and spawns marker to make players crawl
#
# @within minecraft_but.core:modifiers/crawling/main
#
# @context player

execute if block ~ ~1 ~ #minecraft_but.core:air run setblock ~ ~1 ~ barrier
summon marker ~ ~1 ~ {Tags:["global.ignore","marker","minecraft_but","minecraft_but.crawling","minecraft_but.crawling.marker"],CustomName:'{"text":"minecraft_but.crawling.marker"}'}