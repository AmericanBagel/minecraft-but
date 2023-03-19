#> abchc:modifiers/crawling/barrier
#
# Function which places barrier and spawns marker to make players crawl
#
# @within abchc:modifiers/crawling/main
#
# @context player

execute if block ~ ~1 ~ #abchc:air run setblock ~ ~1 ~ barrier
summon marker ~ ~1 ~ {Tags:["global.ignore","marker","abch","abch.crawling","abch.crawling.marker"],CustomName:'{"text":"abch.crawling.marker"}'}