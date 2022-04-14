#> abchc:modifiers/tnt_rain/unload
# Unload function to remove old scoreboards and kill markers
# which sets up scoreboards, defaults, and configs
# @within abchc:modifiers/load
# @context root

#> Scoreboards
scoreboard objectives remove abch.tnt_rain

#> Markers
kill @e[tag=abch.tnt_rain]