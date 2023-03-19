#> abchc:menu/actions/reset_difficulty
# Reset difficulty to default
# @within abchc:menu/**
# @context menu player

#> Click sound
function abchc:menu/actions/click

#> Set custom difficulty to 0
scoreboard players reset difficulty.global abch.custom

#> Set difficulty to default
execute store result score difficulty.global abch.config run difficulty

#> Update page
function abchc:menu/find_page