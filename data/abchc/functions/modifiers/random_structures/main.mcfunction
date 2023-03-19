#> abchc:modifiers/random_structures/main
# Main function for "Feature Fanatic" modifier
# Worldgen features randomly spawn
#
# In ./src is a Node.JS script to update ./placefeature automatically
# If I ever abandon this data pack, feel free to run the script
# and submit a pull request or something!
#
# Note to self: Maybe hook the script up to some other script
# which runs all scripts to update it. IDK. :shrug:
#
#
# @within abchc:modifiers/directory
# @context root
# @input
#   score random_structures.chance abch.config
#       Customized chance to spawn a feature
#   score random_structures.chance abch.default
#       Default chance to spawn a feature

#> Config
# If below 4, keep SFX
execute if score random_structures.chance abch.config matches ..4 run scoreboard players set random_structures.sfx abch.default 0
# If above 5, disable SFX to preserve precious eardrums
execute if score random_structures.chance abch.config matches 5.. run scoreboard players set random_structures.sfx abch.default 0

#> Run loop to try to spawn features
execute as @a[tag=!abch.blacklist,tag=!abch.random_structures.blacklist] at @s run function abchc:modifiers/random_structures/start_loop