#> abchc:menu/modifiers/core/mermaid/config
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
tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"---------------------------------------------","color":"#0F21C6"},"\n",{"text":"←|","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/challenges"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back.","color":"#ECEFF5"}]}}," ",{"text":"You can't leave water","color":"#20CBA8","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/challenges"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back.","color":"#ECEFF5"}]}},{"text":" Config","color":"#17B7CD","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/challenges"}},"\n",{"text":"---------------------------------------------","color":"#0F21C6"}]

#> Blacklist
tellraw @p [{"text":"[","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add abch.mermaid.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"✎","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add abch.mermaid.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"] ","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add abch.mermaid.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"Blacklist player","color":"#ECEFF5","clickEvent":{"action":"suggest_command","value":"/tag player add abch.mermaid.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}}]

##> Difficulty selector
#> Global difficulty
# Peaceful
execute unless score difficulty.mermaid abch.config matches 0..3 if score difficulty.global abch.config matches 0 run tellraw @s [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/difficulty/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/difficulty/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/difficulty/reset"}},{"text":" Difficulty: ","color":"#20CBA8"},{"text":"[←]  ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to decrease the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/difficulty/previous_difficulty"}},{"text":"Peaceful ☮","color":"#44F044","hoverEvent":{"action":"show_text","contents":[{"text":"Peaceful","color":"#44F044"},{"text":" is just as its name implies: peaceful! Is it perfectly easy and relaxing? Yes! Is it fun? Well...","color":"#ECEFF5"}]}},{"text":"  [→]","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to increase the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/difficulty/next_difficulty"}},"\n"]
# Easy
execute unless score difficulty.mermaid abch.config matches 0..3 if score difficulty.global abch.config matches 1 run tellraw @s [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/difficulty/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/difficulty/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/difficulty/reset"}},{"text":" Difficulty: ","color":"#20CBA8"},{"text":"[←]     ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to decrease the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/difficulty/previous_difficulty"}},{"text":"Easy ☺","color":"#3ED011","hoverEvent":{"action":"show_text","contents":[{"text":"Easy","color":"#3ED011"},{"text":" is the difficulty for people looking for a relaxed, casual experience. Don't listen to your friends! Oh, you don't have friends? Uh... Anyway, You're not a chicken! You're just...","color":"#ECEFF5"}]}},{"text":"     [→]","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to increase the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/difficulty/next_difficulty"}},"\n"]
# Normal
execute unless score difficulty.mermaid abch.config matches 0..3 if score difficulty.global abch.config matches 2 run tellraw @s [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/difficulty/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/difficulty/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/difficulty/reset"}},{"text":" Difficulty: ","color":"#20CBA8"},{"text":"[←]   ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to decrease the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/difficulty/previous_difficulty"}},{"text":"Normal ☯","color":"#E4EB18","hoverEvent":{"action":"show_text","contents":[{"text":"Normal","color":"#E4EB18"},{"text":" is the default difficulty with modifiers just the way they were intended — not too easy but not too hard.","color":"#ECEFF5"}]}},{"text":"    [→]","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to increase the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/difficulty/next_difficulty"}},"\n"]
# Hard
execute unless score difficulty.mermaid abch.config matches 0..3 if score difficulty.global abch.config matches 3 run tellraw @s [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/difficulty/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/difficulty/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/difficulty/reset"}},{"text":" Difficulty: ","color":"#20CBA8"},{"text":"[←]     ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to decrease the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/difficulty/previous_difficulty"}},{"text":"Hard ☠","color":"#FF0000","hoverEvent":{"action":"show_text","contents":[{"text":"Hard","color":"#FF0000"},{"text":" is the most brutal difficulty for people who like absolute destruction and chaos. Destruction? Certainly. Death? More than you can count. Lag? Oh yeah! Fun? ¯\\_(ツ)_/¯","color":"#ECEFF5"}]}},{"text":"     [→]","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to increase the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/difficulty/next_difficulty"}},"\n"]

#> Modifier-specific difficulty (local difficulty)
execute if score difficulty.mermaid abch.config matches 0 run tellraw @s [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/difficulty/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/difficulty/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/difficulty/reset"}},{"text":" Difficulty: ","color":"#20CBA8"},{"text":"[←]  ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to decrease the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/difficulty/previous_difficulty"}},{"text":"Peaceful ☮","color":"#44F044","hoverEvent":{"action":"show_text","contents":[{"text":"Peaceful","color":"#44F044"},{"text":" is just as its name implies: peaceful! Is it perfectly easy and relaxing? Yes! Is it fun? Well...","color":"#ECEFF5"}]}},{"text":"  [→]","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to increase the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/difficulty/next_difficulty"}},"\n"]
execute if score difficulty.mermaid abch.config matches 1 run tellraw @s [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/difficulty/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/difficulty/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/difficulty/reset"}},{"text":" Difficulty: ","color":"#20CBA8"},{"text":"[←]     ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to decrease the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/difficulty/previous_difficulty"}},{"text":"Easy ☺","color":"#3ED011","hoverEvent":{"action":"show_text","contents":[{"text":"Easy","color":"#3ED011"},{"text":" is the difficulty for people looking for a relaxed, casual experience. Don't listen to your friends! Oh, you don't have friends? Uh... Anyway, You're not a chicken! You're just...","color":"#ECEFF5"}]}},{"text":"     [→]","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to increase the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/difficulty/next_difficulty"}},"\n"]
execute if score difficulty.mermaid abch.config matches 2 run tellraw @s [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/difficulty/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/difficulty/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/difficulty/reset"}},{"text":" Difficulty: ","color":"#20CBA8"},{"text":"[←]   ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to decrease the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/difficulty/previous_difficulty"}},{"text":"Normal ☯","color":"#E4EB18","hoverEvent":{"action":"show_text","contents":[{"text":"Normal","color":"#E4EB18"},{"text":" is the default difficulty with modifiers just the way they were intended — not too easy but not too hard.","color":"#ECEFF5"}]}},{"text":"    [→]","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to increase the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/difficulty/next_difficulty"}},"\n"]
execute if score difficulty.mermaid abch.config matches 3 run tellraw @s [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/difficulty/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/difficulty/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/difficulty/reset"}},{"text":" Difficulty: ","color":"#20CBA8"},{"text":"[←]     ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to decrease the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/difficulty/previous_difficulty"}},{"text":"Hard ☠","color":"#FF0000","hoverEvent":{"action":"show_text","contents":[{"text":"Hard","color":"#FF0000"},{"text":" is the most brutal difficulty for people who like absolute destruction and chaos. Destruction? Certainly. Death? More than you can count. Lag? Oh yeah! Fun? ¯\\_(ツ)_/¯","color":"#ECEFF5"}]}},{"text":"     [→]","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to increase the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/difficulty/next_difficulty"}},"\n"]


#> Rain protection
# Should players be able to go on land if it is raining?
# ID: rain
# Type: toggle

# If config is set, show toggle based on config
execute if score mermaid.rain abch.config matches ..0 run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/rain/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/rain/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/rain/toggle"}},{"text":" [✖] ","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/rain/toggle"}},{"text":"Rain protection","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should players be able to go on land if it is raining?","color":"#ECEFF5"}]}}]
execute if score mermaid.rain abch.config matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/rain/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/rain/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/rain/toggle"}},{"text":" [✔] ","color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/rain/toggle"}},{"text":"Rain protection","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should players be able to go on land if it is raining?","color":"#ECEFF5"}]}}]

# If no config is set, show togglebased on default
execute unless score mermaid.rain abch.config matches -2147483648..2147483647 unless score mermaid.rain abch.default matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/rain/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/rain/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/rain/toggle"}},{"text":" [✖] ","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/rain/toggle"}},{"text":"Rain protection","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should players be able to go on land if it is raining?","color":"#ECEFF5"}]}}]
execute unless score mermaid.rain abch.config matches -2147483648..2147483647 if score mermaid.rain abch.default matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/rain/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/rain/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/rain/toggle"}},{"text":" [✔] ","color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/rain/toggle"}},{"text":"Rain protection","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should players be able to go on land if it is raining?","color":"#ECEFF5"}]}}]

#> Dolphin's Grace
# Should players who are in water receive dolphin's grace, which grants them more speed underwater?
# ID: dolphins_grace
# Type: toggle

# If config is set, show toggle based on config
execute if score mermaid.dolphins_grace abch.config matches ..0 run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/dolphins_grace/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/dolphins_grace/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/dolphins_grace/toggle"}},{"text":" [✖] ","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/dolphins_grace/toggle"}},{"text":"Dolphin's Grace","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should players who are in water receive dolphin's grace, which grants them more speed underwater?","color":"#ECEFF5"}]}}]
execute if score mermaid.dolphins_grace abch.config matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/dolphins_grace/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/dolphins_grace/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/dolphins_grace/toggle"}},{"text":" [✔] ","color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/dolphins_grace/toggle"}},{"text":"Dolphin's Grace","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should players who are in water receive dolphin's grace, which grants them more speed underwater?","color":"#ECEFF5"}]}}]

# If no config is set, show togglebased on default
execute unless score mermaid.dolphins_grace abch.config matches -2147483648..2147483647 unless score mermaid.dolphins_grace abch.default matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/dolphins_grace/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/dolphins_grace/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/dolphins_grace/toggle"}},{"text":" [✖] ","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/dolphins_grace/toggle"}},{"text":"Dolphin's Grace","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should players who are in water receive dolphin's grace, which grants them more speed underwater?","color":"#ECEFF5"}]}}]
execute unless score mermaid.dolphins_grace abch.config matches -2147483648..2147483647 if score mermaid.dolphins_grace abch.default matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/dolphins_grace/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/dolphins_grace/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/dolphins_grace/toggle"}},{"text":" [✔] ","color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/dolphins_grace/toggle"}},{"text":"Dolphin's Grace","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should players who are in water receive dolphin's grace, which grants them more speed underwater?","color":"#ECEFF5"}]}}]

#> Warning message
# Should players get a warning message in their actionbar when they leave water?
# ID: warning
# Type: toggle

# If config is set, show toggle based on config
execute if score mermaid.warning abch.config matches ..0 run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/warning/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/warning/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/warning/toggle"}},{"text":" [✖] ","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/warning/toggle"}},{"text":"Warning message","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should players get a warning message in their actionbar when they leave water?","color":"#ECEFF5"}]}}]
execute if score mermaid.warning abch.config matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/warning/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/warning/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/warning/toggle"}},{"text":" [✔] ","color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/warning/toggle"}},{"text":"Warning message","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should players get a warning message in their actionbar when they leave water?","color":"#ECEFF5"}]}}]

# If no config is set, show togglebased on default
execute unless score mermaid.warning abch.config matches -2147483648..2147483647 unless score mermaid.warning abch.default matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/warning/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/warning/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/warning/toggle"}},{"text":" [✖] ","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/warning/toggle"}},{"text":"Warning message","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should players get a warning message in their actionbar when they leave water?","color":"#ECEFF5"}]}}]
execute unless score mermaid.warning abch.config matches -2147483648..2147483647 if score mermaid.warning abch.default matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/warning/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/warning/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/warning/toggle"}},{"text":" [✔] ","color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/warning/toggle"}},{"text":"Warning message","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should players get a warning message in their actionbar when they leave water?","color":"#ECEFF5"}]}}]

#> Warning sound
# Should a warning sound be played when players leave water?
# ID: sfx
# Type: toggle

# If config is set, show toggle based on config
execute if score mermaid.sfx abch.config matches ..0 run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/sfx/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/sfx/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/sfx/toggle"}},{"text":" [✖] ","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/sfx/toggle"}},{"text":"Warning sound","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should a warning sound be played when players leave water?","color":"#ECEFF5"}]}}]
execute if score mermaid.sfx abch.config matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/sfx/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/sfx/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/sfx/toggle"}},{"text":" [✔] ","color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/sfx/toggle"}},{"text":"Warning sound","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should a warning sound be played when players leave water?","color":"#ECEFF5"}]}}]

# If no config is set, show togglebased on default
execute unless score mermaid.sfx abch.config matches -2147483648..2147483647 unless score mermaid.sfx abch.default matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/sfx/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/sfx/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/sfx/toggle"}},{"text":" [✖] ","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/sfx/toggle"}},{"text":"Warning sound","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should a warning sound be played when players leave water?","color":"#ECEFF5"}]}}]
execute unless score mermaid.sfx abch.config matches -2147483648..2147483647 if score mermaid.sfx abch.default matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/sfx/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/sfx/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/sfx/toggle"}},{"text":" [✔] ","color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mermaid/sfx/toggle"}},{"text":"Warning sound","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Should a warning sound be played when players leave water?","color":"#ECEFF5"}]}}]