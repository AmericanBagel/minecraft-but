#> abchc:modifiers/mermaid/rain/start
# Start checking if open sky is above player
# to see if player is getting rained on
# @within abchc:modifiers/mermaid/check_for_water
# @context player
# @input
#   score #384 abch.math
#       Constant set of 384 for scoreboard operations
# @output
#   score $loop abch.mermaid
#       How many times to loop in rain/loop
#   score $y abch.mermaid
#       Player's Y level

#> Set loop count
# Set loop to 384 (total world height including negatives)
scoreboard players operation $loop abch.mermaid = #384 abch.math

# Get player's Y level
execute store result score $y abch.mermaid run data get entity @s Pos[1]

# Subtract loop by player's Y level to count up to the height limit
scoreboard players operation $loop abch.mermaid -= $y abch.mermaid

#> Loop through
execute positioned ~ ~1 ~ run function abchc:modifiers/mermaid/rain/loop