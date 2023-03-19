#> minecraft_but.coreraft_but.core:modifiers/waning_wellness/main
# Main function for "Waning Wellness" modifier
# Health decreases by one heart as players die
# Optionally, reaching milestones like entering the nether, defeating the wither, and defeating the ender dragon increase max health.
execute as @a[ tag=!minecraft_but.blacklist, tag=!global.ignore, tag=!minecraft_but.waning_wellness.blacklist, gamemode=!creative, gamemode=!spectator ] aminecraft_but.corerun function minecraft_but.core:modifiers/waning_wellness/actions