#> abchc:modifiers/random_structures/load
# Load function for "Feature Fanatic" modifier
# which adds scoreboards and manages configs and defaults
# @within abchc:modifiers/load
# @within abchc:modifiers/random_structures/**
# @context root
# @output
#   score random_structures.chance abch.default
#       Default chance to spawn a feature
#   score random_structures.chance abch.config
#       Customized chance to spawn a feature

scoreboard players set random_structures.chance abch.default 2