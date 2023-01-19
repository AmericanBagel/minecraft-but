#> abchc:menu/modifiers/core/look_straight/config
# Config menu for look_straight made with
# ../src/index.js
#
# @within abchc:menu/**
# @context player

#> Disable sendCommandFeedback
gamerule sendCommandFeedback false

#> Set sendCommandFeedback back next tick
schedule function abchc:menu/actions/enable_feedback 1t append
  
#> Header
tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"---------------------------------------------","color":"#0F21C6"},"\n",{"text":"←|","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/challenges"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back.","color":"#ECEFF5"}]}}," ",{"text":"You can only look in one direction","color":"#20CBA8","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/challenges"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back.","color":"#ECEFF5"}]}},{"text":" Config","color":"#17B7CD","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/challenges"}},"\n",{"text":"---------------------------------------------","color":"#0F21C6"}]

#> Blacklist
tellraw @p [{"text":"[","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add abch.look_straight.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"✎","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add abch.look_straight.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"] ","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add abch.look_straight.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"Blacklist player","color":"#ECEFF5","clickEvent":{"action":"suggest_command","value":"/tag player add abch.look_straight.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}}]

#> X axis (pitch)
# Should players be forced to look a certain direction on the X axis (aka pitch or vertically)? This setting could make actions like looking down to dig down more complicated...
# ID: x
# Type: toggle

# If config is set, show toggle based on config
execute if score look_straight.x abch.config matches ..0 run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/x/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/x/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/x/toggle"}},{"text":" [✖] ","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/x/toggle"}},{"text":"X axis (pitch)","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should players be forced to look a certain direction on the X axis (aka pitch or vertically)? This setting could make actions like looking down to dig down more complicated...","color":"#ECEFF5"}]}}]
execute if score look_straight.x abch.config matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/x/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/x/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/x/toggle"}},{"text":" [✔] ","color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/x/toggle"}},{"text":"X axis (pitch)","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should players be forced to look a certain direction on the X axis (aka pitch or vertically)? This setting could make actions like looking down to dig down more complicated...","color":"#ECEFF5"}]}}]

# If no config is set, show togglebased on default
execute unless score look_straight.x abch.config matches -2147483648..2147483647 unless score look_straight.x abch.default matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/x/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/x/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/x/toggle"}},{"text":" [✖] ","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/x/toggle"}},{"text":"X axis (pitch)","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should players be forced to look a certain direction on the X axis (aka pitch or vertically)? This setting could make actions like looking down to dig down more complicated...","color":"#ECEFF5"}]}}]
execute unless score look_straight.x abch.config matches -2147483648..2147483647 if score look_straight.x abch.default matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/x/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/x/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/x/toggle"}},{"text":" [✔] ","color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/x/toggle"}},{"text":"X axis (pitch)","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should players be forced to look a certain direction on the X axis (aka pitch or vertically)? This setting could make actions like looking down to dig down more complicated...","color":"#ECEFF5"}]}}]

#> Y axis (yaw)
# Should players be forced to look a certain direction on the Y axis (aka yaw or horizontally). This setting could movement and PvP more complicated...
# ID: y
# Type: toggle

# If config is set, show toggle based on config
execute if score look_straight.y abch.config matches ..0 run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/y/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/y/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/y/toggle"}},{"text":" [✖] ","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/y/toggle"}},{"text":"Y axis (yaw)","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should players be forced to look a certain direction on the Y axis (aka yaw or horizontally). This setting could movement and PvP more complicated...","color":"#ECEFF5"}]}}]
execute if score look_straight.y abch.config matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/y/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/y/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/y/toggle"}},{"text":" [✔] ","color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/y/toggle"}},{"text":"Y axis (yaw)","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should players be forced to look a certain direction on the Y axis (aka yaw or horizontally). This setting could movement and PvP more complicated...","color":"#ECEFF5"}]}}]

# If no config is set, show togglebased on default
execute unless score look_straight.y abch.config matches -2147483648..2147483647 unless score look_straight.y abch.default matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/y/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/y/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/y/toggle"}},{"text":" [✖] ","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/y/toggle"}},{"text":"Y axis (yaw)","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should players be forced to look a certain direction on the Y axis (aka yaw or horizontally). This setting could movement and PvP more complicated...","color":"#ECEFF5"}]}}]
execute unless score look_straight.y abch.config matches -2147483648..2147483647 if score look_straight.y abch.default matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/y/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/y/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/y/toggle"}},{"text":" [✔] ","color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/y/toggle"}},{"text":"Y axis (yaw)","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should players be forced to look a certain direction on the Y axis (aka yaw or horizontally). This setting could movement and PvP more complicated...","color":"#ECEFF5"}]}}]

#> undefined
# If X axis is enabled, what direction should players be forced to look (from -90 to 90)?
# ID: x_rot
# Type: range
execute unless score look_straight.x_rot abch.config matches -2147483648..2147483647 run tellraw @p ["",{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/x_rot/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/x_rot/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/x_rot/reset"}},{"text":" undefined: ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"If X axis is enabled, what direction should players be forced to look (from -90 to 90)?","color":"#ECEFF5"}]}},{"text":"[«] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/x_rot/5down"}},{"text":" [‹] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/x_rot/1down"}},{"score":{"name":"look_straight.x_rot","objective":"abch.default"},"color":"#ECEFF5"},{"text":" [›] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/x_rot/1up"}},{"text":" [»]","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/x_rot/5up"}}]
          
execute if score look_straight.x_rot abch.config matches -2147483648..2147483647 run tellraw @p ["",{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/x_rot/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/x_rot/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/x_rot/reset"}},{"text":" undefined: ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"If X axis is enabled, what direction should players be forced to look (from -90 to 90)?","color":"#ECEFF5"}]}},{"text":"[«] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/x_rot/5down"}},{"text":" [‹] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/x_rot/1down"}},{"score":{"name":"look_straight.x_rot","objective":"abch.config"},"color":"#ECEFF5"},{"text":" [›] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/x_rot/1up"}},{"text":" [»]","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/x_rot/5up"}}]

#> undefined
# If Y axis is enabled, what direction should players be forced to look (from -90 to 90)?
# ID: y_rot
# Type: range
execute unless score look_straight.y_rot abch.config matches -2147483648..2147483647 run tellraw @p ["",{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/y_rot/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/y_rot/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/y_rot/reset"}},{"text":" undefined: ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"If Y axis is enabled, what direction should players be forced to look (from -90 to 90)?","color":"#ECEFF5"}]}},{"text":"[«] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/y_rot/5down"}},{"text":" [‹] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/y_rot/1down"}},{"score":{"name":"look_straight.y_rot","objective":"abch.default"},"color":"#ECEFF5"},{"text":" [›] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/y_rot/1up"}},{"text":" [»]","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/y_rot/5up"}}]
          
execute if score look_straight.y_rot abch.config matches -2147483648..2147483647 run tellraw @p ["",{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/y_rot/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/y_rot/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/y_rot/reset"}},{"text":" undefined: ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"If Y axis is enabled, what direction should players be forced to look (from -90 to 90)?","color":"#ECEFF5"}]}},{"text":"[«] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/y_rot/5down"}},{"text":" [‹] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/y_rot/1down"}},{"score":{"name":"look_straight.y_rot","objective":"abch.config"},"color":"#ECEFF5"},{"text":" [›] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/y_rot/1up"}},{"text":" [»]","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/look_straight/y_rot/5up"}}]