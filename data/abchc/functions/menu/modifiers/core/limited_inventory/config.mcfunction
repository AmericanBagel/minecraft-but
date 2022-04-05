#> abchc:menu/modifiers/core/limited_inventory/config
# Config menu for undefined made with
# ../src/index.js
#
# @within abchc:menu/**
# @context player

#> Disable sendCommandFeedback
gamerule sendCommandFeedback false

#> Set sendCommandFeedback back next tick
schedule function abchc:menu/actions/enable_feedback 1t append
  
#> Header
tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"---------------------------------------------","color":"#0F21C6"},"\n",{"text":"←|","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/challenges"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back.","color":"#ECEFF5"}]}}," ",{"text":"You have no inventory","color":"#20CBA8","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/challenges"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back.","color":"#ECEFF5"}]}},{"text":" Config","color":"#17B7CD","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/challenges"}},"\n",{"text":"---------------------------------------------","color":"#0F21C6"}]

#> Blacklist
tellraw @p [{"text":"[","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add abch.limited_inventory.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"✎","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add abch.limited_inventory.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"] ","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add abch.limited_inventory.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"Blacklist player","color":"#ECEFF5","clickEvent":{"action":"suggest_command","value":"/tag player add abch.limited_inventory.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}}]

##> Difficulty selector
#> Global difficulty
# Peaceful
execute unless score difficulty.limited_inventory abch.config matches 0..3 if score difficulty.global abch.config matches 0 run tellraw @s [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/difficulty/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/difficulty/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/difficulty/reset"}},{"text":" Difficulty: ","color":"#20CBA8"},{"text":"[←]  ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to decrease the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/difficulty/previous_difficulty"}},{"text":"Peaceful ☮","color":"#44F044","hoverEvent":{"action":"show_text","contents":[{"text":"Peaceful","color":"#44F044"},{"text":" is just as its name implies: peaceful! Is it perfectly easy and relaxing? Yes! Is it fun? Well...","color":"#ECEFF5"}]}},{"text":"  [→]","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to increase the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/difficulty/next_difficulty"}},"\n"]
# Easy
execute unless score difficulty.limited_inventory abch.config matches 0..3 if score difficulty.global abch.config matches 1 run tellraw @s [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/difficulty/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/difficulty/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/difficulty/reset"}},{"text":" Difficulty: ","color":"#20CBA8"},{"text":"[←]     ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to decrease the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/difficulty/previous_difficulty"}},{"text":"Easy ☺","color":"#3ED011","hoverEvent":{"action":"show_text","contents":[{"text":"Easy","color":"#3ED011"},{"text":" is the difficulty for people looking for a relaxed, casual experience. Don't listen to your friends! Oh, you don't have friends? Uh... Anyway, You're not a chicken! You're just...","color":"#ECEFF5"}]}},{"text":"     [→]","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to increase the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/difficulty/next_difficulty"}},"\n"]
# Normal
execute unless score difficulty.limited_inventory abch.config matches 0..3 if score difficulty.global abch.config matches 2 run tellraw @s [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/difficulty/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/difficulty/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/difficulty/reset"}},{"text":" Difficulty: ","color":"#20CBA8"},{"text":"[←]   ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to decrease the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/difficulty/previous_difficulty"}},{"text":"Normal ☯","color":"#E4EB18","hoverEvent":{"action":"show_text","contents":[{"text":"Normal","color":"#E4EB18"},{"text":" is the default difficulty with modifiers just the way they were intended — not too easy but not too hard.","color":"#ECEFF5"}]}},{"text":"    [→]","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to increase the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/difficulty/next_difficulty"}},"\n"]
# Hard
execute unless score difficulty.limited_inventory abch.config matches 0..3 if score difficulty.global abch.config matches 3 run tellraw @s [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/difficulty/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/difficulty/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/difficulty/reset"}},{"text":" Difficulty: ","color":"#20CBA8"},{"text":"[←]     ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to decrease the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/difficulty/previous_difficulty"}},{"text":"Hard ☠","color":"#FF0000","hoverEvent":{"action":"show_text","contents":[{"text":"Hard","color":"#FF0000"},{"text":" is the most brutal difficulty for people who like absolute destruction and chaos. Destruction? Certainly. Death? More than you can count. Lag? Oh yeah! Fun? ¯\\_(ツ)_/¯","color":"#ECEFF5"}]}},{"text":"     [→]","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to increase the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/difficulty/next_difficulty"}},"\n"]

#> Modifier-specific difficulty (local difficulty)
execute if score difficulty.limited_inventory abch.config matches 0 run tellraw @s [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/difficulty/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/difficulty/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/difficulty/reset"}},{"text":" Difficulty: ","color":"#20CBA8"},{"text":"[←]  ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to decrease the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/difficulty/previous_difficulty"}},{"text":"Peaceful ☮","color":"#44F044","hoverEvent":{"action":"show_text","contents":[{"text":"Peaceful","color":"#44F044"},{"text":" is just as its name implies: peaceful! Is it perfectly easy and relaxing? Yes! Is it fun? Well...","color":"#ECEFF5"}]}},{"text":"  [→]","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to increase the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/difficulty/next_difficulty"}},"\n"]
execute if score difficulty.limited_inventory abch.config matches 1 run tellraw @s [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/difficulty/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/difficulty/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/difficulty/reset"}},{"text":" Difficulty: ","color":"#20CBA8"},{"text":"[←]     ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to decrease the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/difficulty/previous_difficulty"}},{"text":"Easy ☺","color":"#3ED011","hoverEvent":{"action":"show_text","contents":[{"text":"Easy","color":"#3ED011"},{"text":" is the difficulty for people looking for a relaxed, casual experience. Don't listen to your friends! Oh, you don't have friends? Uh... Anyway, You're not a chicken! You're just...","color":"#ECEFF5"}]}},{"text":"     [→]","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to increase the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/difficulty/next_difficulty"}},"\n"]
execute if score difficulty.limited_inventory abch.config matches 2 run tellraw @s [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/difficulty/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/difficulty/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/difficulty/reset"}},{"text":" Difficulty: ","color":"#20CBA8"},{"text":"[←]   ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to decrease the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/difficulty/previous_difficulty"}},{"text":"Normal ☯","color":"#E4EB18","hoverEvent":{"action":"show_text","contents":[{"text":"Normal","color":"#E4EB18"},{"text":" is the default difficulty with modifiers just the way they were intended — not too easy but not too hard.","color":"#ECEFF5"}]}},{"text":"    [→]","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to increase the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/difficulty/next_difficulty"}},"\n"]
execute if score difficulty.limited_inventory abch.config matches 3 run tellraw @s [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/difficulty/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/difficulty/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/difficulty/reset"}},{"text":" Difficulty: ","color":"#20CBA8"},{"text":"[←]     ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to decrease the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/difficulty/previous_difficulty"}},{"text":"Hard ☠","color":"#FF0000","hoverEvent":{"action":"show_text","contents":[{"text":"Hard","color":"#FF0000"},{"text":" is the most brutal difficulty for people who like absolute destruction and chaos. Destruction? Certainly. Death? More than you can count. Lag? Oh yeah! Fun? ¯\\_(ツ)_/¯","color":"#ECEFF5"}]}},{"text":"     [→]","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to increase the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/difficulty/next_difficulty"}},"\n"]


#> Unlock slots with XP
# Should players unlock inventory slots for every 2 XP levels?
# ID: xp_unlock
# Type: toggle

# If config is set, show toggle based on config
execute if score limited_inventory.xp_unlock abch.config matches ..0 run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/xp_unlock/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/xp_unlock/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/xp_unlock/toggle"}},{"text":" [✖] ","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/xp_unlock/toggle"}},{"text":"Unlock slots with XP","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should players unlock inventory slots for every 2 XP levels?","color":"#ECEFF5"}]}}]
execute if score limited_inventory.xp_unlock abch.config matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/xp_unlock/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/xp_unlock/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/xp_unlock/toggle"}},{"text":" [✔] ","color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/xp_unlock/toggle"}},{"text":"Unlock slots with XP","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should players unlock inventory slots for every 2 XP levels?","color":"#ECEFF5"}]}}]

# If no config is set, show togglebased on default
execute unless score limited_inventory.xp_unlock abch.config matches -2147483648..2147483647 unless score limited_inventory.xp_unlock abch.default matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/xp_unlock/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/xp_unlock/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/xp_unlock/toggle"}},{"text":" [✖] ","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/xp_unlock/toggle"}},{"text":"Unlock slots with XP","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should players unlock inventory slots for every 2 XP levels?","color":"#ECEFF5"}]}}]
execute unless score limited_inventory.xp_unlock abch.config matches -2147483648..2147483647 if score limited_inventory.xp_unlock abch.default matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/xp_unlock/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/xp_unlock/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/xp_unlock/toggle"}},{"text":" [✔] ","color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/limited_inventory/xp_unlock/toggle"}},{"text":"Unlock slots with XP","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should players unlock inventory slots for every 2 XP levels?","color":"#ECEFF5"}]}}]