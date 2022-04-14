#> abchc:modifiers/off
#
# If modifiers are turned off, run off functions.
#
# This is for modifiers which need clean up after
# being turned off, including cleaning up
# lasting markers (markers which last more than one tick),
# removing old tags, and clearing scoreboards.
#
# @within abchc:complete_uninstall
# @context root
# @input
#   score <modifier> abch.toggle
#       This represents any modifier's boolean value for if it is enabled or disabled.
#   score #<modifier> abch.toggle
#       The value of the modifier in the previous tick used for comparing to
#       current tick.

# If past value was 1 (on) and current value is 0 (off), run off function.
execute if score #crawling abch.toggle matches 1 if score crawling abch.toggle matches 0 run function abchc:modifiers/crawling/off
# Save current value, which will be past value, for next tick
scoreboard players operation #crawling abch.toggle = crawling abch.toggle

scoreboard players operation #death_orb abch.toggle = death_orb abch.toggle
execute if score #death_orb abch.toggle matches 1 if score death_orb abch.toggle matches 0 run function abchc:modifiers/death_orb/off

scoreboard players operation #lightning_storm abch.toggle = lightning_storm abch.toggle
execute if score #lightning_storm abch.toggle matches 1 if score lightning_storm abch.toggle matches 0 run function abchc:modifiers/lightning_storm/off