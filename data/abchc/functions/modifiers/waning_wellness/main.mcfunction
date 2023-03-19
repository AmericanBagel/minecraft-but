#> abchc:modifiers/waning_wellness/main
# Main function for "Waning Wellness" modifier
# Health decreases by one heart as players die
# Optionally, reaching milestones like entering the nether, defeating the wither, and defeating the ender dragon increase max health.
execute as @a[ tag=!abch.blacklist, tag=!global.ignore, tag=!abch.waning_wellness.blacklist, gamemode=!creative, gamemode=!spectator ] at @s run function abchc:modifiers/waning_wellness/actions