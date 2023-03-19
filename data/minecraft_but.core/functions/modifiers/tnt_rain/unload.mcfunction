#> minecraft_but.coreraft_but.core:modifiers/tnt_rain/unload
# Unload function to remove old scoreboards and kill markers
# which sets up scoreboards, defaults, and configs
# @within minecraft_but.coreraft_but.core:modifiers/load
# @context root

#> Scoreboards
scoreboard objectives remove minecraft_but.tnt_rain

#> Markers
kill @e[tag=minecraft_but.tnt_rain]