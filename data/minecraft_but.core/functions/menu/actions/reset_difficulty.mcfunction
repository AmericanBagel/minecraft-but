#> minecraft_but.coreraft_but.core:menu/actions/reset_difficulty
# Reset difficulty to default
# @within minecraft_but.coreraft_but.core:menu/**
# @context menu player

#> Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

#> Set custom difficulty to 0
scoreboard players reset difficulty.global minecraft_but.custom

#> Set difficulty to default
execute store result score difficulty.global minecraft_but.config run difficulty

#> Update page
function minecraft_but.coreraft_but.core:menu/find_page