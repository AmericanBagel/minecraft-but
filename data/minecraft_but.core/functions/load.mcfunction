#> minecraft_but.core:load
# Check for dependencies before initializing.
# @handles #load:loac
# @context server
# @within minecraft_but**

#> Lantern load
# Lantern Load compatibility. See https://github.com/LanternMC/load#avoiding-the-minecrafttick-tag
schedule clear minecraft_but.core:main
execute if score random load.status matches 1.. run scoreboard players set minecraft_but.core load.status 1
execute if score minecraft_but.core load.status matches 1 run function minecraft_but.core:init