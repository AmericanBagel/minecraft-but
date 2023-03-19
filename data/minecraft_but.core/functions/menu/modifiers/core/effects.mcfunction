#> minecraft_but.core:menu/modifiers/core/effects
# List of Effects (effects) modifiers. This file is automatically generated.
# @within minecraft_but.core:menu/**
# @context menu player

#> Click sound
function minecraft_but.core:menu/actions/click

#> Update page score
scoreboard players set @s minecraft_but.menu.page 12

#> Disable sendCommandFeedback
gamerule sendCommandFeedback false

#> Set sendCommandFeedback back next tick
schedule function minecraft_but.core:menu/actions/enable_feedback 1t append

#> Header

# If there are no expansion loaded, clicking top bar sends player back to main menu.
# Doing this gets rid of that unnecessary step between directory and page 1 here.
execute unless score $total minecraft_but.expansion matches 1.. run tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"---------------------------------------------","color":"#0F21C6"},"\n",{"text":"←|","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/actions/back_to_main"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the main menu.","color":"#ECEFF5"}]}},{"text":" Effects","color":"#17B7CD","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/actions/back_to_main"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the main menu.","color":"#ECEFF5"}]}},"\n",{"text":"---------------------------------------------","color":"#0F21C6"}]

# If there is an expansion loaded, clicking top bar sends the player to the modifiers directory
# which has links to the different expansion packs' modifiers pages.
execute if score $total minecraft_but.expansion matches 1.. run execute unless score $total minecraft_but.expansion matches 1.. run tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"---------------------------------------------","color":"#0F21C6"},"\n",{"text":"←|","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/directory"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the modifiers category page.","color":"#ECEFF5"}]}},{"text":" Modifier Categories","color":"#E4EB18","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/directory"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the modifiers category page.","color":"#ECEFF5"}]}},"\n",{"text":"---------------------------------------------","color":"#0F21C6"}]

#> Modifiers
## You get random potion effects (random_effects)
execute unless score random_effects minecraft_but.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/random_effects/on"}},{"text":"     ","hoverEvent": {"action":"show_text","contents":[{"text":"Every minute, you get a random effect of a random level. You can get good effets, but beware the bad!","color":"#ECEFF5"}]}},{"text":"You get random potion effects","bold":false,"color":"#62a8ff","hoverEvent": {"action":"show_text","contents":[{"text":"Every minute, you get a random effect of a random level. You can get good effets, but beware the bad!","color":"#ECEFF5"}]}}]


execute if score random_effects minecraft_but.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/random_effects/off"}},{"text":"     ","hoverEvent": {"action":"show_text","contents":[{"text":"Every minute, you get a random effect of a random level. You can get good effets, but beware the bad!","color":"#ECEFF5"}]}},{"text":"You get random potion effects","bold":false,"color":"#62a8ff","hoverEvent": {"action":"show_text","contents":[{"text":"Every minute, you get a random effect of a random level. You can get good effets, but beware the bad!","color":"#ECEFF5"}]}}]

## Taking damage gives you a random effect (suspicious_injury)
execute unless score suspicious_injury minecraft_but.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/suspicious_injury/on"}},{"text":"     ","hoverEvent": {"action":"show_text","contents":[{"text":"When you take damage, you get a random potion effect","color":"#ECEFF5"}]}},{"text":"Taking damage gives you a random effect","bold":false,"color":"#54b9cc","hoverEvent": {"action":"show_text","contents":[{"text":"When you take damage, you get a random potion effect","color":"#ECEFF5"}]}}]


execute if score suspicious_injury minecraft_but.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/suspicious_injury/off"}},{"text":"     ","hoverEvent": {"action":"show_text","contents":[{"text":"When you take damage, you get a random potion effect","color":"#ECEFF5"}]}},{"text":"Taking damage gives you a random effect","bold":false,"color":"#54b9cc","hoverEvent": {"action":"show_text","contents":[{"text":"When you take damage, you get a random potion effect","color":"#ECEFF5"}]}}]

## Food gives you random potion effects (potion_food)
execute unless score potion_food minecraft_but.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/potion_food/on"}},{"text":"     ","hoverEvent": {"action":"show_text","contents":[{"text":"Eating food gives you a random potion effect. You can configure this modifier to give a specific potion effect for each kind of food.","color":"#ECEFF5"}]}},{"text":"Food gives you random potion effects","bold":false,"color":"#46cb99","hoverEvent": {"action":"show_text","contents":[{"text":"Eating food gives you a random potion effect. You can configure this modifier to give a specific potion effect for each kind of food.","color":"#ECEFF5"}]}}]


execute if score potion_food minecraft_but.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/potion_food/off"}},{"text":"     ","hoverEvent": {"action":"show_text","contents":[{"text":"Eating food gives you a random potion effect. You can configure this modifier to give a specific potion effect for each kind of food.","color":"#ECEFF5"}]}},{"text":"Food gives you random potion effects","bold":false,"color":"#46cb99","hoverEvent": {"action":"show_text","contents":[{"text":"Eating food gives you a random potion effect. You can configure this modifier to give a specific potion effect for each kind of food.","color":"#ECEFF5"}]}}]

## Glowing (glowing)
execute unless score glowing minecraft_but.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/glowing/on"}},{"text":"     ","hoverEvent": {"action":"show_text","contents":[{"text":"Players or mobs glow, depending on your configuration. They can glow permanently or at an interval such as every minute.","color":"#ECEFF5"}]}},{"text":"Glowing","bold":false,"color":"#38dc66","hoverEvent": {"action":"show_text","contents":[{"text":"Players or mobs glow, depending on your configuration. They can glow permanently or at an interval such as every minute.","color":"#ECEFF5"}]}}]


execute if score glowing minecraft_but.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/glowing/off"}},{"text":"     ","hoverEvent": {"action":"show_text","contents":[{"text":"Players or mobs glow, depending on your configuration. They can glow permanently or at an interval such as every minute.","color":"#ECEFF5"}]}},{"text":"Glowing","bold":false,"color":"#38dc66","hoverEvent": {"action":"show_text","contents":[{"text":"Players or mobs glow, depending on your configuration. They can glow permanently or at an interval such as every minute.","color":"#ECEFF5"}]}}]

## Taking damage nauseates you (damage_nausea)
execute unless score damage_nausea minecraft_but.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/damage_nausea/on"}},{"text":"     ","hoverEvent": {"action":"show_text","contents":[{"text":"Nausea, the most annoying effect. Imagine getting it every time you get hit! It might make you actually nauseous in real life!","color":"#ECEFF5"}]}},{"text":"Taking damage nauseates you","bold":false,"color":"#2aee33","hoverEvent": {"action":"show_text","contents":[{"text":"Nausea, the most annoying effect. Imagine getting it every time you get hit! It might make you actually nauseous in real life!","color":"#ECEFF5"}]}}]


execute if score damage_nausea minecraft_but.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/damage_nausea/off"}},{"text":"     ","hoverEvent": {"action":"show_text","contents":[{"text":"Nausea, the most annoying effect. Imagine getting it every time you get hit! It might make you actually nauseous in real life!","color":"#ECEFF5"}]}},{"text":"Taking damage nauseates you","bold":false,"color":"#2aee33","hoverEvent": {"action":"show_text","contents":[{"text":"Nausea, the most annoying effect. Imagine getting it every time you get hit! It might make you actually nauseous in real life!","color":"#ECEFF5"}]}}]

## You are blind. (blindness)
execute unless score blindness minecraft_but.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/blindness/on"}},{"text":"     ","hoverEvent": {"action":"show_text","contents":[{"text":"You can only see a few blocks in front of you, permanently blinded! Beating the game when you can only see a few blocks in front of you is a difficult challenge. Are you up to the task?","color":"#ECEFF5"}]}},{"text":"You are blind.","bold":false,"color":"#1cff00","hoverEvent": {"action":"show_text","contents":[{"text":"You can only see a few blocks in front of you, permanently blinded! Beating the game when you can only see a few blocks in front of you is a difficult challenge. Are you up to the task?","color":"#ECEFF5"}]}}]


execute if score blindness minecraft_but.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/blindness/off"}},{"text":"     ","hoverEvent": {"action":"show_text","contents":[{"text":"You can only see a few blocks in front of you, permanently blinded! Beating the game when you can only see a few blocks in front of you is a difficult challenge. Are you up to the task?","color":"#ECEFF5"}]}},{"text":"You are blind.","bold":false,"color":"#1cff00","hoverEvent": {"action":"show_text","contents":[{"text":"You can only see a few blocks in front of you, permanently blinded! Beating the game when you can only see a few blocks in front of you is a difficult challenge. Are you up to the task?","color":"#ECEFF5"}]}}]

## You get faster the more you walk (walk_leveling)
execute unless score walk_leveling minecraft_but.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/walk_leveling/on"}},{"text":"     ","hoverEvent": {"action":"show_text","contents":[{"text":"Just like an RPG!","color":"#ECEFF5"}]}},{"text":"You get faster the more you walk","bold":false,"color":"#1cff00","hoverEvent": {"action":"show_text","contents":[{"text":"Just like an RPG!","color":"#ECEFF5"}]}}]


execute if score walk_leveling minecraft_but.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/walk_leveling/off"}},{"text":"     ","hoverEvent": {"action":"show_text","contents":[{"text":"Just like an RPG!","color":"#ECEFF5"}]}},{"text":"You get faster the more you walk","bold":false,"color":"#1cff00","hoverEvent": {"action":"show_text","contents":[{"text":"Just like an RPG!","color":"#ECEFF5"}]}}]

