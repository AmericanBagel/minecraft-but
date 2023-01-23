#> minecraft_but.core:menu/modifiers/core/fire_walker/config
# Config menu for fire_walker made with
# ../src/index.js
#
# @within minecraft_but.core:menu/**
# @context player

#> Disable sendCommandFeedback
gamerule sendCommandFeedback false

#> Set sendCommandFeedback back next tick
schedule function minecraft_but.core:menu/actions/enable_feedback 1t append
    
#> Header
tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"---------------------------------------------","color":"#0F21C6"},"\n",{"text":"←|","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/chaos"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back.","color":"#ECEFF5"}]}}," ",{"text":"Everything around you turns to fire","color":"#cf0c5e","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/chaos"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back.","color":"#ECEFF5"}]}},{"text":" Config","color":"#17B7CD","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/chaos"}},"\n",{"text":"---------------------------------------------","color":"#0F21C6"}]

#> Blacklist
tellraw @p [{"text":"[","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add minecraft_but.fire_walker.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"✎","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add minecraft_but.fire_walker.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"] ","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add minecraft_but.fire_walker.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"Blacklist player","color":"#ECEFF5","clickEvent":{"action":"suggest_command","value":"/tag player add minecraft_but.fire_walker.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}}]                    

#> Rate
                    # The rate at which blocks around players turn to fire
                    # ID: rate
                    # Type: range
                    execute unless score fire_walker.rate minecraft_but.config matches -2147483648..2147483647 run tellraw @p ["",{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/fire_walker/rate/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/fire_walker/rate/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/fire_walker/rate/reset"}},{"text":" Rate: ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"The rate at which blocks around players turn to fire","color":"#ECEFF5"}]}},{"text":"[«] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/fire_walker/rate/5down"}},{"text":" [‹] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/fire_walker/rate/1down"}},{"score":{"name":"fire_walker.rate","objective":"minecraft_but.default"},"color":"#ECEFF5"},{"text":" [›] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/fire_walker/rate/1up"}},{"text":" [»]","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/fire_walker/rate/5up"}}]
                                
                    execute if score fire_walker.rate minecraft_but.config matches -2147483648..2147483647 run tellraw @p ["",{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/fire_walker/rate/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/fire_walker/rate/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/fire_walker/rate/reset"}},{"text":" Rate: ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"The rate at which blocks around players turn to fire","color":"#ECEFF5"}]}},{"text":"[«] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/fire_walker/rate/5down"}},{"text":" [‹] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/fire_walker/rate/1down"}},{"score":{"name":"fire_walker.rate","objective":"minecraft_but.config"},"color":"#ECEFF5"},{"text":" [›] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/fire_walker/rate/1up"}},{"text":" [»]","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/fire_walker/rate/5up"}}]                    

#> Fire resistance
                    # Should players get fire resistance? Disable this if you want death. Disabling it will not be fun. Do not think about it, you sadist! You just want to watch the world burn, don't you? Monster. Didn't your parents tell you to not play with fire?
                    # ID: effect
                    # Type: toggle

                    # If config is set, show toggle based on config
                    execute if score fire_walker.effect minecraft_but.config matches ..0 run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/fire_walker/effect/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/fire_walker/effect/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/fire_walker/effect/toggle"}},{"text":" [✖] ","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/fire_walker/effect/toggle"}},{"text":"Fire resistance","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should players get fire resistance? Disable this if you want death. Disabling it will not be fun. Do not think about it, you sadist! You just want to watch the world burn, don't you? Monster. Didn't your parents tell you to not play with fire?","color":"#ECEFF5"}]}}]
                    execute if score fire_walker.effect minecraft_but.config matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/fire_walker/effect/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/fire_walker/effect/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/fire_walker/effect/toggle"}},{"text":" [✔] ","color":"#3ED011","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/fire_walker/effect/toggle"}},{"text":"Fire resistance","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should players get fire resistance? Disable this if you want death. Disabling it will not be fun. Do not think about it, you sadist! You just want to watch the world burn, don't you? Monster. Didn't your parents tell you to not play with fire?","color":"#ECEFF5"}]}}]

                    # If no config is set, show togglebased on default
                    execute unless score fire_walker.effect minecraft_but.config matches -2147483648..2147483647 unless score fire_walker.effect minecraft_but.default matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/fire_walker/effect/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/fire_walker/effect/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/fire_walker/effect/toggle"}},{"text":" [✖] ","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/fire_walker/effect/toggle"}},{"text":"Fire resistance","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should players get fire resistance? Disable this if you want death. Disabling it will not be fun. Do not think about it, you sadist! You just want to watch the world burn, don't you? Monster. Didn't your parents tell you to not play with fire?","color":"#ECEFF5"}]}}]
                    execute unless score fire_walker.effect minecraft_but.config matches -2147483648..2147483647 if score fire_walker.effect minecraft_but.default matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/fire_walker/effect/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/fire_walker/effect/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/fire_walker/effect/toggle"}},{"text":" [✔] ","color":"#3ED011","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/fire_walker/effect/toggle"}},{"text":"Fire resistance","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should players get fire resistance? Disable this if you want death. Disabling it will not be fun. Do not think about it, you sadist! You just want to watch the world burn, don't you? Monster. Didn't your parents tell you to not play with fire?","color":"#ECEFF5"}]}}]