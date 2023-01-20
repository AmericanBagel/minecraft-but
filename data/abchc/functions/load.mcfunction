#> abchc:load
# Check for dependencies before initializing.
# @handles #load:loac
# @context server
# @within abch**

#> Lantern load
# Lantern Load compatibility. See https://github.com/LanternMC/load#avoiding-the-minecrafttick-tag
schedule clear abchc:main
execute if score random load.status matches 1.. run scoreboard players set abchc load.status 1
execute if score abchc load.status matches 1 run function abchc:init