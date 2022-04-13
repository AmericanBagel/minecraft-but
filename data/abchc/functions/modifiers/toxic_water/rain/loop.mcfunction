#> abchc:modifiers/toxic_water/rain/loop
# Loop through checking of air is above player to the height limit
# @within abchc:modifiers/toxic_water/rain/start
# @context player in rainy weather
# @output
#   score $loop abch.toxic_water
#       How many more times to loop in this function

#> Decrement loop
scoreboard players remove $loop abch.toxic_water 1

#> If there's air above, continue loop up
execute if score $loop abch.toxic_water matches 1.. if block ~ ~1 ~ #abchc:air positioned ~ ~1 ~ run function abchc:modifiers/toxic_water/rain/loop

#> If the limit was never reached, a block was found above so tag player
execute if score $loop abch.toxic_water matches ..0 run tag @s add abch.toxic_water.rain
execute if score $loop abch.toxic_water matches ..0 run tag @s remove abch.toxic_water.out_of_water