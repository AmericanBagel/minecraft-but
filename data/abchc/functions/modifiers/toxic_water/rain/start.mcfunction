#> abchc:modifiers/toxic_water/rain/start
# Start checking if open sky is above player
# to see if player is getting rained on
# @within abchc:modifiers/toxic_water/check_for_water
# @context player
# @input
#   score #384 abch.math
#       Constant set of 384 for scoreboard operations
# @output
#   score $loop abch.toxic_water
#       How many times to loop in rain/loop
#   score $y abch.toxic_water
#       Player's Y level

#> Set loop count
# Set loop to 384 (total world height including negatives)
scoreboard players operation $loop abch.toxic_water = #384 abch.math

# Get player's Y level
execute store result score $y abch.toxic_water run data get entity @s Pos[1]

# Subtract loop by player's Y level to count up to the height limit
scoreboard players operation $loop abch.toxic_water -= $y abch.toxic_water

#> Loop through
execute positioned ~ ~1 ~ run function abchc:modifiers/toxic_water/rain/loop