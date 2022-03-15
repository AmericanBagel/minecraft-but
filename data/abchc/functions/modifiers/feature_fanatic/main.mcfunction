#> abchc:modifiers/feature_fanatic/main
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
#   score feature_fanatic.chance abch.config
#       Customized chance to spawn a feature
#   score feature_fanatic.chance abch.default
#       Default chance to spawn a feature

#> Run loop to try to spawn features
execute as @a[tag=!abch.blacklist,tag=!abch.feature_fanatic.blacklist] at @s run function abchc:modifiers/feature_fanatic/start_loop