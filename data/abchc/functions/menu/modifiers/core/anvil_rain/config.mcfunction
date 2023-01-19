#> abchc:menu/modifiers/core/anvil_rain/config
# Config menu for anvil_rain made with
# ../src/index.js
#
# @within abchc:menu/**
# @context player

#> Disable sendCommandFeedback
gamerule sendCommandFeedback false

#> Set sendCommandFeedback back next tick
schedule function abchc:menu/actions/enable_feedback 1t append
    
#> Header
tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"---------------------------------------------","color":"#0F21C6"},"\n",{"text":"←|","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/chaos"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back.","color":"#ECEFF5"}]}}," ",{"text":"Anvils rain from the sky","color":"#ef041f","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/chaos"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back.","color":"#ECEFF5"}]}},{"text":" Config","color":"#17B7CD","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/chaos"}},"\n",{"text":"---------------------------------------------","color":"#0F21C6"}]

#> Blacklist
tellraw @p [{"text":"[","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add abch.anvil_rain.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"✎","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add abch.anvil_rain.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"] ","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add abch.anvil_rain.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"Blacklist player","color":"#ECEFF5","clickEvent":{"action":"suggest_command","value":"/tag player add abch.anvil_rain.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}}]                    

#> Keep anvils
                    # Should anvils stay after they hit the ground?
                    # ID: keep
                    # Type: toggle

                    # If config is set, show toggle based on config
                    execute if score anvil_rain.keep abch.config matches ..0 run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/keep/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/keep/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/keep/toggle"}},{"text":" [✖] ","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/keep/toggle"}},{"text":"Keep anvils","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should anvils stay after they hit the ground?","color":"#ECEFF5"}]}}]
                    execute if score anvil_rain.keep abch.config matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/keep/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/keep/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/keep/toggle"}},{"text":" [✔] ","color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/keep/toggle"}},{"text":"Keep anvils","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should anvils stay after they hit the ground?","color":"#ECEFF5"}]}}]

                    # If no config is set, show togglebased on default
                    execute unless score anvil_rain.keep abch.config matches -2147483648..2147483647 unless score anvil_rain.keep abch.default matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/keep/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/keep/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/keep/toggle"}},{"text":" [✖] ","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/keep/toggle"}},{"text":"Keep anvils","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should anvils stay after they hit the ground?","color":"#ECEFF5"}]}}]
                    execute unless score anvil_rain.keep abch.config matches -2147483648..2147483647 if score anvil_rain.keep abch.default matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/keep/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/keep/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/keep/toggle"}},{"text":" [✔] ","color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/keep/toggle"}},{"text":"Keep anvils","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should anvils stay after they hit the ground?","color":"#ECEFF5"}]}}]                    

#> Rain from sky
                    # Should anvils rain from the sky?
                    # ID: sky
                    # Type: toggle

                    # If config is set, show toggle based on config
                    execute if score anvil_rain.sky abch.config matches ..0 run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/sky/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/sky/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/sky/toggle"}},{"text":" [✖] ","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/sky/toggle"}},{"text":"Rain from sky","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should anvils rain from the sky?","color":"#ECEFF5"}]}}]
                    execute if score anvil_rain.sky abch.config matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/sky/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/sky/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/sky/toggle"}},{"text":" [✔] ","color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/sky/toggle"}},{"text":"Rain from sky","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should anvils rain from the sky?","color":"#ECEFF5"}]}}]

                    # If no config is set, show togglebased on default
                    execute unless score anvil_rain.sky abch.config matches -2147483648..2147483647 unless score anvil_rain.sky abch.default matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/sky/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/sky/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/sky/toggle"}},{"text":" [✖] ","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/sky/toggle"}},{"text":"Rain from sky","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should anvils rain from the sky?","color":"#ECEFF5"}]}}]
                    execute unless score anvil_rain.sky abch.config matches -2147483648..2147483647 if score anvil_rain.sky abch.default matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/sky/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/sky/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/sky/toggle"}},{"text":" [✔] ","color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/sky/toggle"}},{"text":"Rain from sky","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should anvils rain from the sky?","color":"#ECEFF5"}]}}]                    

#> Rain above players
                    # Should anvils rain above players, relative to their position? This will spawn anvils about 15 blocks above players instead of from the sky. This is useful for players who hide underground.
                    # ID: relative
                    # Type: toggle

                    # If config is set, show toggle based on config
                    execute if score anvil_rain.relative abch.config matches ..0 run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/relative/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/relative/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/relative/toggle"}},{"text":" [✖] ","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/relative/toggle"}},{"text":"Rain above players","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should anvils rain above players, relative to their position? This will spawn anvils about 15 blocks above players instead of from the sky. This is useful for players who hide underground.","color":"#ECEFF5"}]}}]
                    execute if score anvil_rain.relative abch.config matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/relative/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/relative/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/relative/toggle"}},{"text":" [✔] ","color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/relative/toggle"}},{"text":"Rain above players","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should anvils rain above players, relative to their position? This will spawn anvils about 15 blocks above players instead of from the sky. This is useful for players who hide underground.","color":"#ECEFF5"}]}}]

                    # If no config is set, show togglebased on default
                    execute unless score anvil_rain.relative abch.config matches -2147483648..2147483647 unless score anvil_rain.relative abch.default matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/relative/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/relative/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/relative/toggle"}},{"text":" [✖] ","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/relative/toggle"}},{"text":"Rain above players","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should anvils rain above players, relative to their position? This will spawn anvils about 15 blocks above players instead of from the sky. This is useful for players who hide underground.","color":"#ECEFF5"}]}}]
                    execute unless score anvil_rain.relative abch.config matches -2147483648..2147483647 if score anvil_rain.relative abch.default matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/relative/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/relative/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/relative/toggle"}},{"text":" [✔] ","color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/relative/toggle"}},{"text":"Rain above players","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should anvils rain above players, relative to their position? This will spawn anvils about 15 blocks above players instead of from the sky. This is useful for players who hide underground.","color":"#ECEFF5"}]}}]                    

#> Chance
                    # How often to spawn anvils
                    # ID: chance
                    # Type: number
                    execute unless score anvil_rain.chance abch.config matches -2147483648..2147483647 run tellraw @p ["",{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/chance/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/chance/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/chance/reset"}},{"text":" Chance: ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"How often to spawn anvils","color":"#ECEFF5"}]}},{"text":"[«] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/chance/5down"}},{"text":" [‹] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/chance/1down"}},{"score":{"name":"anvil_rain.chance","objective":"abch.default"},"color":"#ECEFF5"},{"text":" [›] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/chance/1up"}},{"text":" [»]","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/chance/5up"}}]
                                
                    execute if score anvil_rain.chance abch.config matches -2147483648..2147483647 run tellraw @p ["",{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/chance/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/chance/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/chance/reset"}},{"text":" Chance: ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"How often to spawn anvils","color":"#ECEFF5"}]}},{"text":"[«] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/chance/5down"}},{"text":" [‹] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/chance/1down"}},{"score":{"name":"anvil_rain.chance","objective":"abch.config"},"color":"#ECEFF5"},{"text":" [›] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/chance/1up"}},{"text":" [»]","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/anvil_rain/chance/5up"}}]