#> minecraft_but.core:modifiers/anvil_rain/unload
# Unload function to remove old scoreboards and kill markers
# which sets up scoreboards, defaults, and configs
# @within minecraft_but.core:modifiers/load
# @context root

#> Scoreboards
scoreboard objectives remove minecraft_but.anvil_rain

#> Markers
kill @e[tag=minecraft_but.anvil_rain]