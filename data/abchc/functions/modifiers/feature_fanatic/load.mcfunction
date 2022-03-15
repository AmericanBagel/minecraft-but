#> abchc:modifiers/feature_fanatic/load
# Load function for "Feature Fanatic" modifier
# which adds scoreboards and manages configs and defaults
# @within abchc:modifiers/load
# @within abchc:modifiers/feature_fanatic/**
# @context root
# @output
#   score feature_fanatic.chance abch.default
#       Default chance to spawn a feature
#   score feature_fanatic.chance abch.config
#       Customized chance to spawn a feature

scoreboard players set feature_fanatic.chance abch.default 2