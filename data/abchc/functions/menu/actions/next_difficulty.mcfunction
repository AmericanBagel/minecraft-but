#> abchc:menu/actions/next_difficulty
# Go to the next difficulty
# @within abchc:menu/**
# @context menu player

#> Click sound
function abchc:menu/actions/click

#> Set difficulty to temp score
scoreboard players operation #temp abch.difficulty = difficulty.global abch.config

#> Increase temp score
scoreboard players add #temp abch.difficulty 1

#> If it goes above 4, reset to 1 (Hard to Easy)
execute if score #temp abch.difficulty matches 4.. run scoreboard players set #temp abch.difficulty 1

#> Set new difficulty temp score to difficulty
scoreboard players operation difficulty.global abch.config = #temp abch.difficulty

#> Update page
function abchc:menu/directory