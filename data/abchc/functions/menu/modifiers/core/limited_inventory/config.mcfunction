#> abchc:menu/modifiers/core/limited_inventory/config
# Config menu for undefined made with
# ../src/index.js
#
# @within abchc:menu/**
# @context player
  
#> Header
tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"---------------------------------------------","color":"#0F21C6"},"\n",{"text":"←|","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/challenges"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back.","color":"#ECEFF5"}]}}," ",{"text":"You have no inventory Config","color":"#17B7CD","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/challenges"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back.","color":"#ECEFF5"}]}},"\n",{"text":"---------------------------------------------","color":"#0F21C6"}]

#> Blacklist
tellraw @p [{"text":"[","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add abch.limited_inventory.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"✎","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add abch.limited_inventory.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"] ","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add abch.limited_inventory.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"Blacklist player","color":"#ECEFF5","clickEvent":{"action":"suggest_command","value":"/tag player add abch.limited_inventory.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},"\n"]

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