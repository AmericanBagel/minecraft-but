#> abchc:menu/modifiers/core/mechanic
# List "Mechanic" type modifiers
# @within abchc:menu/**
# @context menu player

#> Click sound
function abchc:menu/actions/click

#> Update page score
scoreboard players set @s abch.menu.page 16

#> Disable sendCommandFeedback
gamerule sendCommandFeedback false

#> Set sendCommandFeedback back next tick
schedule function abchc:menu/actions/enable_feedback 1t append

#> Header

# If there are no expansion loaded, clicking top bar sends player back to main menu.
# Doing this gets rid of that unnecessary step between directory and page 1 here.
execute unless score $total abch.expansion matches 1.. run tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"---------------------------------------------","color":"#0F21C6"},"\n",{"text":"←|","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/actions/back_to_main"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the main menu.","color":"#ECEFF5"}]}},{"text":" Mechanic","color":"#20CBA8","clickEvent":{"action":"run_command","value":"/function abchc:menu/actions/back_to_main"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the main menu.","color":"#ECEFF5"}]}},"\n",{"text":"---------------------------------------------","color":"#0F21C6"}]

# If there is an expansion loaded, clicking top bar sends the player to the modifiers directory
# which has links to the different expansion packs' modifiers pages.
execute if score $total abch.expansion matches 1.. run execute unless score $total abch.expansion matches 1.. run tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"---------------------------------------------","color":"#0F21C6"},"\n",{"text":"←|","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/directory"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the modifiers category page.","color":"#ECEFF5"}]}},{"text":" Modifier Categories","color":"#E4EB18","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/directory"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the modifiers category page.","color":"#ECEFF5"}]}},"\n",{"text":"---------------------------------------------","color":"#0F21C6"}]

#> Modifiers

#> Modifiers
# [✔] [⚙] (Modifier Name)

## You can't jump (no_jump)
# If you jump, you die.\n\nPro tips: TURN OFF AUTOJUMP. Get creative. Use water buckets, ladders, stairs, or anything to give yourself a boost. If you want to make sure you absolutely can't jump, set your jump key to nothing.\n\nIf you see \"Not Bound\", you're good: 
execute unless score no_jump abch.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/no_jump/on"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/no_jump/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/no_jump/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/no_jump/config"}},{"text":"You can't jump","bold":false,"color":"#00edff","hoverEvent": {"action":"show_text","contents":[{"text":"If you jump, you die.\n\nPro tips: TURN OFF AUTOJUMP. Get creative. Use water buckets, ladders, stairs, or anything to give yourself a boost. If you want to make sure you absolutely can't jump, set your jump key to nothing.\n\nIf you see \"Not Bound\", you're good: "},{"keybind":"key.jump"}]}}]
execute if score no_jump abch.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/no_jump/off"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/no_jump/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/no_jump/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/no_jump/config"}},{"text":"You can't jump","bold":false,"color":"#00edff","hoverEvent": {"action":"show_text","contents":[{"text":"If you jump, you die.\n\nPro tips: TURN OFF AUTOJUMP. Get creative. Use water buckets, ladders, stairs, or anything to give yourself a boost. If you want to make sure you absolutely can't jump, set your jump key to nothing.\n\nIf you see \"Not Bound\", you're good: "},{"keybind":"key.jump"}]}}]

## You can't sneak (no_sneak)
# If you sneak, you die. No more bridging across ravines for you! No more hiding from the Warden for you! 
execute unless score no_sneak abch.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/no_sneak/on"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/no_sneak/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/no_sneak/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/no_sneak/config"}},{"text":"You can't sneak","bold":false,"color":"#00f3d1","hoverEvent": {"action":"show_text","contents":[{"text":"If you sneak, you die. No more bridging across ravines for you! No more hiding from the Warden for you!"}]}}]
execute if score no_sneak abch.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/no_sneak/off"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/no_sneak/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/no_sneak/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/no_sneak/config"}},{"text":"You can't sneak","bold":false,"color":"#00f3d1","hoverEvent": {"action":"show_text","contents":[{"text":"If you sneak, you die. No more bridging across ravines for you! No more hiding from the Warden for you!"}]}}]

## You can't sprint (schlatt_mode)
# Minecraft as it was meant to be. Sprinting is such a waste. It removes all your precious hunger and saturation all for what -- a minor speed boost? Insulting. Almost as bad as C418 - stal. 
execute unless score schlatt_mode abch.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/schlatt_mode/on"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/schlatt_mode/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/schlatt_mode/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/schlatt_mode/config"}},{"text":"You can't sprint","bold":false,"color":"#00f9a3","hoverEvent": {"action":"show_text","contents":[{"text":"Minecraft as it was meant to be. Sprinting is such a waste. It removes all your precious hunger and saturation all for what -- a minor speed boost? Insulting. Almost as bad as C418 - stal."}]}}]
execute if score schlatt_mode abch.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/schlatt_mode/off"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/schlatt_mode/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/schlatt_mode/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/schlatt_mode/config"}},{"text":"You can't sprint","bold":false,"color":"#00f9a3","hoverEvent": {"action":"show_text","contents":[{"text":"Minecraft as it was meant to be. Sprinting is such a waste. It removes all your precious hunger and saturation all for what -- a minor speed boost? Insulting. Almost as bad as C418 - stal."}]}}]

## You can't kill anything (pacifist)
# If you kill anything, you die. An eye for an eye, a tooth for a tooth, you monster! Do you realize that zombies haves homes? If you want to kill something, get creative. 
execute unless score pacifist abch.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/pacifist/on"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/pacifist/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/pacifist/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/pacifist/config"}},{"text":"You can't kill anything","bold":false,"color":"#00ff75","hoverEvent": {"action":"show_text","contents":[{"text":"If you kill anything, you die. An eye for an eye, a tooth for a tooth, you monster! Do you realize that zombies haves homes? If you want to kill something, get creative."}]}}]
execute if score pacifist abch.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/pacifist/off"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/pacifist/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/pacifist/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/pacifist/config"}},{"text":"You can't kill anything","bold":false,"color":"#00ff75","hoverEvent": {"action":"show_text","contents":[{"text":"If you kill anything, you die. An eye for an eye, a tooth for a tooth, you monster! Do you realize that zombies haves homes? If you want to kill something, get creative."}]}}]
# !? You can't jump (no_jump)
# !? You can't sneak (no_sneak)
# !? You can't walk (no_walk)
# !? You can't sprint (schlatt_mode)
# !? You can't kill anything (pacifists)