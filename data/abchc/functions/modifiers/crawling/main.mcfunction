#> abchc:modifiers/crawling/main
#
# Main function for crawling modifier
# Makes players always crawl by placing a barrier above them
#
# @within abchc:modifiers/directory
#
# @context root

# Exempt creative players from crawling unless enabled in config
tag @a[ tag=abch.crawling.creative ] remove abch.crawling.creative
execute unless score crawling.creative abch.config matches 1 run tag @a[ gamemode=creative ] add abch.crawling.creative

# Detect jumps so players don't have barriers above them while jumping
execute as @a[tag=!abch.crawling.blacklist, nbt=!{abilities:{flying:1b}}, nbt=!{OnGround:0b}, tag=!abch.crawling.creative ] at @s run function abchc:modifiers/crawling/barriers

# If the marker's barrier was removed or a player is not under it, remove it
execute as @e[ name="abch.crawling.marker" ] at @s unless block ~ ~ ~ minecraft:barrier run function abchc:modifiers/crawling/remove
execute as @e[ name="abch.crawling.marker" ] at @s positioned ~ ~-1 ~ unless entity @a[ distance=..1, tag=!abch.crawling.blacklist, nbt=!{abilities:{flying:1b}}, nbt=!{OnGround:0b}, tag=!abch.crawling.creative] positioned ~ ~1 ~ run function abchc:modifiers/crawling/remove