#> abchc:modifiers/crawling/remove
#
# Remove barrier and kill marker if there is no player under it
#
# @context barrier marker
#
# @within abchc:modifiers/crawling/main

execute if block ~ ~ ~ barrier run setblock ~ ~ ~ air
kill @s