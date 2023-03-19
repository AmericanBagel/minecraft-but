#> abchc:menu/modifiers/core/explosions
# List of Explosions (explosions) modifiers. This file is automatically generated.
# @within abchc:menu/**
# @context menu player

#> Click sound
function abchc:menu/actions/click

#> Update page score
scoreboard players set @s abch.menu.page 12

#> Disable sendCommandFeedback
gamerule sendCommandFeedback false

#> Set sendCommandFeedback back next tick
schedule function abchc:menu/actions/enable_feedback 1t append

#> Header

# If there are no expansion loaded, clicking top bar sends player back to main menu.
# Doing this gets rid of that unnecessary step between directory and page 1 here.
execute unless score $total abch.expansion matches 1.. run tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"---------------------------------------------","color":"#0F21C6"},"\n",{"text":"←|","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/actions/back_to_main"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the main menu.","color":"#ECEFF5"}]}},{"text":" Explosions","color":"#CF2020","clickEvent":{"action":"run_command","value":"/function abchc:menu/actions/back_to_main"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the main menu.","color":"#ECEFF5"}]}},"\n",{"text":"---------------------------------------------","color":"#0F21C6"}]

# If there is an expansion loaded, clicking top bar sends the player to the modifiers directory
# which has links to the different expansion packs' modifiers pages.
execute if score $total abch.expansion matches 1.. run execute unless score $total abch.expansion matches 1.. run tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"---------------------------------------------","color":"#0F21C6"},"\n",{"text":"←|","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/directory"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the modifiers category page.","color":"#ECEFF5"}]}},{"text":" Modifier Categories","color":"#E4EB18","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/directory"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the modifiers category page.","color":"#ECEFF5"}]}},"\n",{"text":"---------------------------------------------","color":"#0F21C6"}]

#> Modifiers
## All mobs explode like creepers (creeper_mobs)
execute unless score creeper_mobs abch.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/creeper_mobs/on"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/creeper_mobs/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/creeper_mobs/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/creeper_mobs/config"}},{"text":"All mobs explode like creepers","bold":false,"color":"#b11616","hoverEvent": {"action":"show_text","contents":[{"text":"If you get too close, mobs will explode like creepers!","color":"#ECEFF5"}]}}]



execute if score creeper_mobs abch.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/creeper_mobs/off"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/creeper_mobs/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/creeper_mobs/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/creeper_mobs/config"}},{"text":"All mobs explode like creepers","bold":false,"color":"#b11616","hoverEvent": {"action":"show_text","contents":[{"text":"If you get too close, mobs will explode like creepers!","color":"#ECEFF5"}]}}]

## Creepers are nuclear (creeper_nukes)
execute unless score creeper_nukes abch.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/creeper_nukes/on"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/creeper_nukes/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/creeper_nukes/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/creeper_nukes/config"}},{"text":"Creepers are nuclear","bold":false,"color":"#ba2913","hoverEvent": {"action":"show_text","contents":[{"text":"Say goodbye to your precious world and your precious builds. These guys went from gunpowder to nuclear fuel. There's no stopping these guys. ","color":"#ECEFF5"}]}}]



execute if score creeper_nukes abch.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/creeper_nukes/off"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/creeper_nukes/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/creeper_nukes/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/creeper_nukes/config"}},{"text":"Creepers are nuclear","bold":false,"color":"#ba2913","hoverEvent": {"action":"show_text","contents":[{"text":"Say goodbye to your precious world and your precious builds. These guys went from gunpowder to nuclear fuel. There's no stopping these guys. ","color":"#ECEFF5"}]}}]

## Arrows explode (explosive_arrows)
execute unless score explosive_arrows abch.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/explosive_arrows/on"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/explosive_arrows/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/explosive_arrows/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/explosive_arrows/config"}},{"text":"Arrows explode","bold":false,"color":"#c43d10","hoverEvent": {"action":"show_text","contents":[{"text":"Fun for the whole family! Great with 'Arrows are fast'!","color":"#ECEFF5"}]}}]



execute if score explosive_arrows abch.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/explosive_arrows/off"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/explosive_arrows/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/explosive_arrows/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/explosive_arrows/config"}},{"text":"Arrows explode","bold":false,"color":"#c43d10","hoverEvent": {"action":"show_text","contents":[{"text":"Fun for the whole family! Great with 'Arrows are fast'!","color":"#ECEFF5"}]}}]

## Eggs explode (explosive_eggs)
execute unless score explosive_eggs abch.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/explosive_eggs/on"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/explosive_eggs/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/explosive_eggs/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/explosive_eggs/config"}},{"text":"Eggs explode","bold":false,"color":"#cd500e","hoverEvent": {"action":"show_text","contents":[{"text":"Scrambled? Devilled? Boiled? Explosive?","color":"#ECEFF5"}]}}]



execute if score explosive_eggs abch.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/explosive_eggs/off"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/explosive_eggs/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/explosive_eggs/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/explosive_eggs/config"}},{"text":"Eggs explode","bold":false,"color":"#cd500e","hoverEvent": {"action":"show_text","contents":[{"text":"Scrambled? Devilled? Boiled? Explosive?","color":"#ECEFF5"}]}}]

## Everywhere you look explodes (explosive_sight)
execute unless score explosive_sight abch.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/explosive_sight/on"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/explosive_sight/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/explosive_sight/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/explosive_sight/config"}},{"text":"Everywhere you look explodes","bold":false,"color":"#d6630b","hoverEvent": {"action":"show_text","contents":[{"text":"Everywhere players look explodes!","color":"#ECEFF5"}]}}]



execute if score explosive_sight abch.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/explosive_sight/off"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/explosive_sight/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/explosive_sight/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/explosive_sight/config"}},{"text":"Everywhere you look explodes","bold":false,"color":"#d6630b","hoverEvent": {"action":"show_text","contents":[{"text":"Everywhere players look explodes!","color":"#ECEFF5"}]}}]

## Snowballs explode (explosive_arrows)
execute unless score explosive_arrows abch.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/explosive_arrows/on"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/explosive_arrows/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/explosive_arrows/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/explosive_arrows/config"}},{"text":"Snowballs explode","bold":false,"color":"#e07708","hoverEvent": {"action":"show_text","contents":[{"text":"balls.","color":"#ECEFF5"}]}}]



execute if score explosive_arrows abch.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/explosive_arrows/off"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/explosive_arrows/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/explosive_arrows/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/explosive_arrows/config"}},{"text":"Snowballs explode","bold":false,"color":"#e07708","hoverEvent": {"action":"show_text","contents":[{"text":"balls.","color":"#ECEFF5"}]}}]

## Bats carry TNT (tnt_bats)
execute unless score tnt_bats abch.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/tnt_bats/on"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/tnt_bats/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/tnt_bats/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/tnt_bats/config"}},{"text":"Bats carry TNT","bold":false,"color":"#e98a05","hoverEvent": {"action":"show_text","contents":[{"text":"All bats carry TNT which detonates near players.","color":"#ECEFF5"}]}}]



execute if score tnt_bats abch.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/tnt_bats/off"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/tnt_bats/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/tnt_bats/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/tnt_bats/config"}},{"text":"Bats carry TNT","bold":false,"color":"#e98a05","hoverEvent": {"action":"show_text","contents":[{"text":"All bats carry TNT which detonates near players.","color":"#ECEFF5"}]}}]

## TNT rains from the sky (tnt_rain)
execute unless score tnt_rain abch.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/tnt_rain/on"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/tnt_rain/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/tnt_rain/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/tnt_rain/config"}},{"text":"TNT rains from the sky","bold":false,"color":"#e98a05","hoverEvent": {"action":"show_text","contents":[{"text":"TNT rains from the sky! The end is nigh!","color":"#ECEFF5"}]}}]



execute if score tnt_rain abch.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/tnt_rain/off"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/tnt_rain/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/tnt_rain/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/tnt_rain/config"}},{"text":"TNT rains from the sky","bold":false,"color":"#e98a05","hoverEvent": {"action":"show_text","contents":[{"text":"TNT rains from the sky! The end is nigh!","color":"#ECEFF5"}]}}]

