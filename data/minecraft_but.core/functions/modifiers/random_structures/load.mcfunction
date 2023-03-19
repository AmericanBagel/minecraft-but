#> minecraft_but.coreraft_but.core:modifiers/random_structures/load
# Load function for "Feature Fanatic" modifier
# which adds scoreboards and manages configs and defaults
# @within minecraft_but.coreraft_but.core:modifiers/load
# @within minecraft_but.coreraft_but.core:modifiers/random_structures/**
# @context root
# @output
#   score random_structures.chance minecraft_but.default
#       Default chance to spawn a feature
#   score random_structures.chance minecraft_but.config
#       Customized chance to spawn a feature

scoreboard players set random_structures.chance minecraft_but.default 1