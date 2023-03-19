#> abchc:modifiers/anvil_rain/unload
# Unload function to remove old scoreboards and kill markers
# which sets up scoreboards, defaults, and configs
# @within abchc:modifiers/load
# @context root

#> Scoreboards
scoreboard objectives remove abch.anvil_rain

#> Markers
kill @e[tag=abch.anvil_rain]