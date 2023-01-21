#> abchc:menu/modifiers/core/categories
# Link to different categories
# @within abchc:menu/**
# @context menu player

#> Click sound
function abchc:menu/actions/click

#> Update page score
scoreboard players set @s abch.menu.page 11

#> Disable sendCommandFeedback
gamerule sendCommandFeedback false

#> Set sendCommandFeedback back next tick
schedule function abchc:menu/actions/enable_feedback 1t append

#> Header
# If there are no expansion loaded, clicking top bar sends player back to main menu.
# Doing this gets rid of that unnecessary step between directory and page 1 here.
execute unless score $total abch.expansion matches 1.. run tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"---------------------------------------------","color":"#0F21C6"},"\n",{"text":"←|","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/actions/back_to_main"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the main menu.","color":"#ECEFF5"}]}},{"text":" Modifier Categories","color":"#17B7CD","clickEvent":{"action":"run_command","value":"/function abchc:menu/actions/back_to_main"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the main menu.","color":"#ECEFF5"}]}},"\n",{"text":"---------------------------------------------","color":"#0F21C6"}]

# If there is an expansion loaded, clicking top bar sends the player to the modifiers directory
# which has links to the different expansion packs' modifiers pages.
execute if score $total abch.expansion matches 1.. run execute unless score $total abch.expansion matches 1.. run tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"---------------------------------------------","color":"#0F21C6"},"\n",{"text":"←|","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/directory"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the modifiers page.","color":"#ECEFF5"}]}},{"text":" Modifier Categories","color":"#17B7CD","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/directory"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the modifiers page.","color":"#ECEFF5"}]}},"\n",{"text":"---------------------------------------------","color":"#0F21C6"}]

#> Turn off all modifiers
tellraw @s [{"text":"[Turn off all modifiers]","color":"#DD3333","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/disable_all"}},"\n"]

#> Categories
# Challenges
tellraw @s [{"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Modifiers which involve a central challenge, such as \"You can't touch x\" or \"if you do x, you die\".","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/challenges"}},{"text":"Challenges","color":"#E4EB18","hoverEvent":{"action":"show_text","contents":[{"text":"Modifiers which involve a central challenge, such as \"You can't touch x\" or \"if you do x, you die\".","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/challenges"}}]

# Explosions
tellraw @s [{"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"EXPLOSIONS! EXPLOSIONS EVERYWHERE! MWAHAHAHAHAHAHA!!!!","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/explosions"}},{"text":"Explosions","color":"#CF2020","hoverEvent":{"action":"show_text","contents":[{"text":"EXPLOSIONS! EXPLOSIONS EVERYWHERE! MWAHAHAHAHAHAHA!!!!","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/explosions"}}]

# Chaos
tellraw @s [{"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Absolute, utter chaos. You thought explosions were bad? Check out the chaos section. It's, well, chaotic.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/chaos"}},{"text":"Chaos","color":"#FF0000","hoverEvent":{"action":"show_text","contents":[{"text":"Absolute, utter chaos. You thought explosions were bad? Check out the chaos section. It's, well, chaotic.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/chaos"}}]

# Mechanic
tellraw @s [{"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Anything relating to core gameplay mechanics like running or jumping.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mechanic"}},{"text":"Mechanic","color":"#20CBA8","hoverEvent":{"action":"show_text","contents":[{"text":"Anything relating to core gameplay mechanics like running or jumping.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mechanic"}}]

# Teleporting
tellraw @s [{"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Anything relating to teleporting. Become an ender man!","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/teleporting"}},{"text":"Teleporting","color":"#C300FF","hoverEvent":{"action":"show_text","contents":[{"text":"Anything relating to teleporting. Become an ender man!","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/teleporting"}}]

# Effects
tellraw @s [{"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Modifiers that involve potion effects.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/effects"}},{"text":"Effects","color":"#17B7CD","hoverEvent":{"action":"show_text","contents":[{"text":"Modifiers that involve potion effects.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/effects"}}]

# Mobs
tellraw @s [{"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Modifiers that directly relate to or modify mobs.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mobs"}},{"text":"Mobs","color":"#3ED011","hoverEvent":{"action":"show_text","contents":[{"text":"Modifiers that directly relate to or modify mobs.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mobs"}}]

# Miscellaneous
tellraw @s [{"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Anything that I'm too lazy to fit into any other category.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/misc"}},{"text":"Miscellaneous","color":"#A8A8A8","hoverEvent":{"action":"show_text","contents":[{"text":"Anything that I'm too lazy to fit into any other category.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/misc"}}]


# Newline
tellraw @s [""]