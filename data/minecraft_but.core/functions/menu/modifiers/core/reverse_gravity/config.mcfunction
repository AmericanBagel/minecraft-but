#> minecraft_but.core:menu/modifiers/core/reverse_gravity/config
# Config menu for reverse_gravity made with
# ../src/index.js
#
# @within minecraft_but.core:menu/**
# @context player

#> Disable sendCommandFeedback
gamerule sendCommandFeedback false

#> Set sendCommandFeedback back next tick
schedule function minecraft_but.core:menu/actions/enable_feedback 1t append
    
#> Header
tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"---------------------------------------------","color":"#0F21C6"},"\n",{"text":"←|","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/challenges"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back.","color":"#ECEFF5"}]}}," ",{"text":"Gravity is reversed","color":"#fda900","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/challenges"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back.","color":"#ECEFF5"}]}},{"text":" Config","color":"#17B7CD","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/challenges"}},"\n",{"text":"---------------------------------------------","color":"#0F21C6"}]

#> Blacklist
tellraw @p [{"text":"[","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add minecraft_but.reverse_gravity.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"✎","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add minecraft_but.reverse_gravity.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"] ","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add minecraft_but.reverse_gravity.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"Blacklist player","color":"#ECEFF5","clickEvent":{"action":"suggest_command","value":"/tag player add minecraft_but.reverse_gravity.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}}]                    

#> Affect players
                    # Should players' gravity be reversed?
                    # ID: affect_players
                    # Type: toggle

                    # If config is set, show toggle based on config
                    execute if score reverse_gravity.affect_players minecraft_but.config matches ..0 run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/reverse_gravity/affect_players/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/reverse_gravity/affect_players/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/reverse_gravity/affect_players/toggle"}},{"text":" [✖] ","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/reverse_gravity/affect_players/toggle"}},{"text":"Affect players","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should players' gravity be reversed?","color":"#ECEFF5"}]}}]
                    execute if score reverse_gravity.affect_players minecraft_but.config matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/reverse_gravity/affect_players/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/reverse_gravity/affect_players/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/reverse_gravity/affect_players/toggle"}},{"text":" [✔] ","color":"#3ED011","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/reverse_gravity/affect_players/toggle"}},{"text":"Affect players","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should players' gravity be reversed?","color":"#ECEFF5"}]}}]

                    # If no config is set, show togglebased on default
                    execute unless score reverse_gravity.affect_players minecraft_but.config matches -2147483648..2147483647 unless score reverse_gravity.affect_players minecraft_but.default matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/reverse_gravity/affect_players/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/reverse_gravity/affect_players/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/reverse_gravity/affect_players/toggle"}},{"text":" [✖] ","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/reverse_gravity/affect_players/toggle"}},{"text":"Affect players","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should players' gravity be reversed?","color":"#ECEFF5"}]}}]
                    execute unless score reverse_gravity.affect_players minecraft_but.config matches -2147483648..2147483647 if score reverse_gravity.affect_players minecraft_but.default matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/reverse_gravity/affect_players/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/reverse_gravity/affect_players/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/reverse_gravity/affect_players/toggle"}},{"text":" [✔] ","color":"#3ED011","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/reverse_gravity/affect_players/toggle"}},{"text":"Affect players","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should players' gravity be reversed?","color":"#ECEFF5"}]}}]                    

#> Affect mobs
                    # Should mobs' gravity be reversed'?
                    # ID: affect_mobs
                    # Type: toggle

                    # If config is set, show toggle based on config
                    execute if score reverse_gravity.affect_mobs minecraft_but.config matches ..0 run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/reverse_gravity/affect_mobs/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/reverse_gravity/affect_mobs/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/reverse_gravity/affect_mobs/toggle"}},{"text":" [✖] ","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/reverse_gravity/affect_mobs/toggle"}},{"text":"Affect mobs","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should mobs' gravity be reversed'?","color":"#ECEFF5"}]}}]
                    execute if score reverse_gravity.affect_mobs minecraft_but.config matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/reverse_gravity/affect_mobs/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/reverse_gravity/affect_mobs/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/reverse_gravity/affect_mobs/toggle"}},{"text":" [✔] ","color":"#3ED011","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/reverse_gravity/affect_mobs/toggle"}},{"text":"Affect mobs","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should mobs' gravity be reversed'?","color":"#ECEFF5"}]}}]

                    # If no config is set, show togglebased on default
                    execute unless score reverse_gravity.affect_mobs minecraft_but.config matches -2147483648..2147483647 unless score reverse_gravity.affect_mobs minecraft_but.default matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/reverse_gravity/affect_mobs/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/reverse_gravity/affect_mobs/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/reverse_gravity/affect_mobs/toggle"}},{"text":" [✖] ","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/reverse_gravity/affect_mobs/toggle"}},{"text":"Affect mobs","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should mobs' gravity be reversed'?","color":"#ECEFF5"}]}}]
                    execute unless score reverse_gravity.affect_mobs minecraft_but.config matches -2147483648..2147483647 if score reverse_gravity.affect_mobs minecraft_but.default matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/reverse_gravity/affect_mobs/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/reverse_gravity/affect_mobs/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/reverse_gravity/affect_mobs/toggle"}},{"text":" [✔] ","color":"#3ED011","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/reverse_gravity/affect_mobs/toggle"}},{"text":"Affect mobs","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should mobs' gravity be reversed'?","color":"#ECEFF5"}]}}]                    

#> Affect entities
                    # Should entities' (i.e. arrows, snowballs, armor stands) gravity be reversed?
                    # ID: affect_entities
                    # Type: toggle

                    # If config is set, show toggle based on config
                    execute if score reverse_gravity.affect_entities minecraft_but.config matches ..0 run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/reverse_gravity/affect_entities/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/reverse_gravity/affect_entities/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/reverse_gravity/affect_entities/toggle"}},{"text":" [✖] ","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/reverse_gravity/affect_entities/toggle"}},{"text":"Affect entities","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should entities' (i.e. arrows, snowballs, armor stands) gravity be reversed?","color":"#ECEFF5"}]}}]
                    execute if score reverse_gravity.affect_entities minecraft_but.config matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/reverse_gravity/affect_entities/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/reverse_gravity/affect_entities/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/reverse_gravity/affect_entities/toggle"}},{"text":" [✔] ","color":"#3ED011","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/reverse_gravity/affect_entities/toggle"}},{"text":"Affect entities","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should entities' (i.e. arrows, snowballs, armor stands) gravity be reversed?","color":"#ECEFF5"}]}}]

                    # If no config is set, show togglebased on default
                    execute unless score reverse_gravity.affect_entities minecraft_but.config matches -2147483648..2147483647 unless score reverse_gravity.affect_entities minecraft_but.default matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/reverse_gravity/affect_entities/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/reverse_gravity/affect_entities/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/reverse_gravity/affect_entities/toggle"}},{"text":" [✖] ","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/reverse_gravity/affect_entities/toggle"}},{"text":"Affect entities","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should entities' (i.e. arrows, snowballs, armor stands) gravity be reversed?","color":"#ECEFF5"}]}}]
                    execute unless score reverse_gravity.affect_entities minecraft_but.config matches -2147483648..2147483647 if score reverse_gravity.affect_entities minecraft_but.default matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/reverse_gravity/affect_entities/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/reverse_gravity/affect_entities/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/reverse_gravity/affect_entities/toggle"}},{"text":" [✔] ","color":"#3ED011","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/reverse_gravity/affect_entities/toggle"}},{"text":"Affect entities","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should entities' (i.e. arrows, snowballs, armor stands) gravity be reversed?","color":"#ECEFF5"}]}}]