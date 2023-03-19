#> abchc:menu/actions/previous_difficulty
# Go to the next difficulty
# @within abchc:menu/**
# @context menu player

#> Click sound
function abchc:menu/actions/click

#> If there is no custom difficulty value, get from default
execute unless score difficulty.global abch.custom matches -2147483648..2147483647 run scoreboard players operation difficulty.global abch.custom = difficulty.global abch.default

#> Set difficulty to temp score
scoreboard players operation #temp abch.config = difficulty.global abch.custom

#> Increase temp score
scoreboard players remove #temp abch.config 1

#> If it goes above 4, reset to 1 (Peaceful to Hard)
execute if score #temp abch.config matches ..-1 run scoreboard players set #temp abch.config 3

#> Set new difficulty temp score to difficulty
scoreboard players operation difficulty.global abch.custom = #temp abch.config

#> Set custom difficulty score to global difficulty
scoreboard players operation difficulty.global abch.config = difficulty.global abch.custom

#> Update page
function abchc:menu/find_page