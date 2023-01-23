#> minecraft_but.core:modifiers/crawling/main
#
# Main function for crawling modifier
# Makes players always crawl by placing a barrier above them
#
# @within minecraft_but.core:modifiers/directory
#
# @context root

# TODO: Make much more efficient.

# Exempt creative players from crawling unless enabled in config
tag @a[ tag=minecraft_but.crawling.creative ] remove minecraft_but.crawling.creative
execute unless score crawling.creative minecraft_but.config matches 1 run tag @a[ gamemode=creative ] add minecraft_but.crawling.creative

# Detect jumps so players don't have barriers above them while jumping
execute as @a[tag=!minecraft_but.crawling.blacklist, tag=!minecraft_but.blacklist, nbt=!{abilities:{flying:1b}}, nbt=!{OnGround:0b}, tag=!minecraft_but.crawling.creative ] at @s unless entity @e[tag=minecraft_but.crawling.marker,distance=..1.5] run function minecraft_but.core:modifiers/crawling/barriers

execute as @e[tag=minecraft_but.crawling.marker] at @s run particle happy_villager ~ ~ ~ 0 0 0 1 0 normal

# If the marker's barrier was removed or a player is not under it, remove it
execute as @e[ tag=minecraft_but.crawling.marker ] at @s unless block ~ ~ ~ minecraft:barrier run function minecraft_but.core:modifiers/crawling/remove
# execute as @e[ tag=minecraft_but.crawling.marker ] at @s positioned ~ ~-1 ~ unless entity @a[ distance=..1, tag=!minecraft_but.crawling.blacklist, nbt=!{abilities:{flying:1b}}, nbt=!{OnGround:0b}, tag=!minecraft_but.crawling.creative] positioned ~ ~1 ~ run function minecraft_but.core:modifiers/crawling/remove