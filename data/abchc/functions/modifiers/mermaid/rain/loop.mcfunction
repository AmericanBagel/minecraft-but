#> abchc:modifiers/mermaid/rain/loop
# Loop through checking of air is above player to the height limit
# @within abchc:modifiers/mermaid/rain/start
# @context player in rainy weather
# @output
#   score $loop abch.mermaid
#       How many more times to loop in this function

#> Decrement loop
scoreboard players remove $loop abch.mermaid 1

#> If there's air above, continue loop up
execute if score $loop abch.mermaid matches 1.. if block ~ ~1 ~ #abchc:air positioned ~ ~1 ~ run function abchc:modifiers/mermaid/rain/loop

#> If the limit was never reached, a block was found above so tag player
execute if score $loop abch.mermaid matches ..0 run tag @s add abch.mermaid.rain
execute if score $loop abch.mermaid matches ..0 run tag @s add abch.mermaid.in_water