#> abchc:modifiers/creeper_mobs/load
# Load function for creeper mobs which
# adds scoreboards and defaults configs
# @within abchc:modifiers/load
# @context root
# @input
#   score difficulty.global abch.config
#       Global modifier difficulty which determines
#       how hard every un-customized modifier should be.
#       (default to world difficulty)
#   score gamerule.mobGriefing abch.config
#       Global value to determine whether
#       modifiers should grief or not.
#       Default to mobGriefing gamerule
#       
# @output
#   score creeper_mobs.type abch.default
#       Default for creeper_mobs.type
#       based on difficulty.
#   score creeper_mobs.type abch.config
#       What mobs should be selected to explode
#       like creepers.
#       Default to default creeper_mobs.type
#
#   score creeper_mobs.radius abch.default
#       Default for creeper_mobs.radius
#       based on difficulty.
#   score creeper_mobs.radius abch.config
#       How large explosion radius should be.
#       Positive values grief. Negative values
#       just deal damage with no griefing.


##> Scoreboards
## Fuse scoreboard
# Timer for how long mobs can be fused before exploding
scoreboard objectives add abch.creeper_mobs.fuse dummy

##> Default configs
# Set default mob type to global difficulty
scoreboard players operation creeper_mobs.type abch.default = difficulty.global abch.config
# Set mob type to default if there is no custom value
#execute unless score creeper_mobs.type abch.config matches 1..3 run scoreboard players operation creeper_mobs.type abch.config = creeper_mobs.type abch.default

# Set mob griefing score default to score
execute if score gamerule.mobGriefing abch.config matches 1 if score difficulty.global abch.config matches 1 run scoreboard players set creeper_mobs.radius abch.default 2
execute if score gamerule.mobGriefing abch.config matches 1 if score difficulty.global abch.config matches 2 run scoreboard players set creeper_mobs.radius abch.default 3
execute if score gamerule.mobGriefing abch.config matches 1 if score difficulty.global abch.config matches 3 run scoreboard players set creeper_mobs.radius abch.default 4


#execute unless score creeper_mobs.mobGriefing abch.config matches 0..1 run scoreboard players operation creeper_mobs.mobGriefing abch.config = creeper_mobs.mobGriefing abch.default

# Set default explosion radius based on difficulty
# If mob griefing is enabled, set it to a positive score
execute if score creeper_mobs.mobGriefing abch.config matches 1 if score difficulty.global abch.config matches 1 run scoreboard players set creeper_mobs.radius abch.default 2
execute if score creeper_mobs.mobGriefing abch.config matches 1 if score difficulty.global abch.config matches 2 run scoreboard players set creeper_mobs.radius abch.default 3
execute if score creeper_mobs.mobGriefing abch.config matches 1 if score difficulty.global abch.config matches 3 run scoreboard players set creeper_mobs.radius abch.default 4

# If mob griefing is disabled, set it to a negative score
execute unless score creeper_mobs.mobGriefing abch.config matches 1 if score difficulty.global abch.config matches 1 run scoreboard players set creeper_mobs.radius abch.default -2
execute unless score creeper_mobs.mobGriefing abch.config matches 1 if score difficulty.global abch.config matches 2 run scoreboard players set creeper_mobs.radius abch.default -3
execute unless score creeper_mobs.mobGriefing abch.config matches 1 if score difficulty.global abch.config matches 3 run scoreboard players set creeper_mobs.radius abch.default -4

# Apply default radius to radius
#execute unless score creeper_mobs.radius abch.config matches -2147483648..2147483647 run scoreboard players operation creeper_mobs.radius abch.config = creeper_mobs.radius abch.default