#> minecraft_but.coreraft_but.core:menu/modifiers/core/troglodyte/config
# Config menu for troglodyte made with
# ../src/index.js
#
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

#> Disable sendCommandFeedback
gamerule sendCommandFeedback false

#> Set sendCommandFeedback back next tick
schedule function minecraft_but.coreraft_but.core:menu/actions/enable_feedback 1t append
    
#> Header
tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"---------------------------------------------","color":"#0F21C6"},"\n",{"text":"←|","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.coreraft_but.core:menu/modifiers/core/challenges"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back.","color":"#ECEFF5"}]}}," ",{"text":"Light kills you","color":"undefined","clickEvent":{"action":"run_command","valueminecraft_but.coreunction minecraft_but.core:menu/modifiers/core/challenges"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back.","color":"#ECEFF5"}]}},{"text":" Config","color":"#17B7CD","clickEvent":{"action":"run_cominecraft_but.core","value":"/function minecraft_but.core:menu/modifiers/core/challenges"}},"\n",{"text":"---------------------------------------------","color":"#0F21C6"}]

#> Blacklist
tellraw @p [{"text":"[","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add minecraft_but.troglodyte.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"✎","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add minecraft_but.troglodyte.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"] ","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add minecraft_but.troglodyte.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"Blacklist player","color":"#ECEFF5","clickEvent":{"action":"suggest_command","value":"/tag player add minecraft_but.troglodyte.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\n\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}}]            

##> Difficulty selector
            #> Global difficulty
            # Peaceful
            execute unless score difficulty.troglodyte minecraft_but.config matches 0..3 if score difficulty.global minecraft_but.config matches 0 run tellraw @s [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","minecraft_but.core":"/function minecraft_but.core:menu/modifiers/core/troglodyte/difficulty/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"rminecraft_but.coremmand","value":"/function minecraft_but.core:menu/modifiers/core/troglodyte/difficulty/reset"}},{"text":"]","color":"#FF0000","clickEvent"minecraft_but.coretion":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/troglodyte/difficulty/reset"}},{"text":" Difficulty: ","color":"#20CBA8"},{"text":"[←]  ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to decrease the difficulty.","color":"#ECEFF5"}]}minecraft_but.coreckEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/troglodyte/difficulty/previous_difficulty"}},{"text":"Peaceful ☮","color":"#44F044","hoverEvent":{"action":"show_text","contents":[{"text":"Peaceful","color":"#44F044"},{"text":" is just as its name implies: peaceful! Is it perfectly easy and relaxing? Yes! Is it fun? Well...","color":"#ECEFF5"}]}},{"text":"  [→]","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to increase the difficulty.","color"minecraft_but.coreEFF5"}]},"clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/troglodyte/difficulty/next_difficulty"}},"\n"]
            # Easy
            execute unless score difficulty.troglodyte minecraft_but.config matches 0..3 if score difficulty.global minecraft_but.config matches 1 run tellraw @s [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","minecraft_but.core":"/function minecraft_but.core:menu/modifiers/core/troglodyte/difficulty/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"rminecraft_but.coremmand","value":"/function minecraft_but.core:menu/modifiers/core/troglodyte/difficulty/reset"}},{"text":"]","color":"#FF0000","clickEvent"minecraft_but.coretion":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/troglodyte/difficulty/reset"}},{"text":" Difficulty: ","color":"#20CBA8"},{"text":"[←]     ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to decrease the difficulty.","color":"#ECEFF5"}]}minecraft_but.coreckEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/troglodyte/difficulty/previous_difficulty"}},{"text":"Easy ☺","color":"#3ED011","hoverEvent":{"action":"show_text","contents":[{"text":"Easy","color":"#3ED011"},{"text":" is the difficulty for people looking for a relaxed, casual experience. Don't listen to your friends! Oh, you don't have friends? Uh... Anyway, You're not a chicken! You're just...","color":"#ECEFF5"}]}},{"text":"     [→]","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to increase the difficulty.","color"minecraft_but.coreEFF5"}]},"clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/troglodyte/difficulty/next_difficulty"}},"\n"]
            # Normal
            execute unless score difficulty.troglodyte minecraft_but.config matches 0..3 if score difficulty.global minecraft_but.config matches 2 run tellraw @s [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","minecraft_but.core":"/function minecraft_but.core:menu/modifiers/core/troglodyte/difficulty/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"rminecraft_but.coremmand","value":"/function minecraft_but.core:menu/modifiers/core/troglodyte/difficulty/reset"}},{"text":"]","color":"#FF0000","clickEvent"minecraft_but.coretion":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/troglodyte/difficulty/reset"}},{"text":" Difficulty: ","color":"#20CBA8"},{"text":"[←]   ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to decrease the difficulty.","color":"#ECEFF5"}]}minecraft_but.coreckEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/troglodyte/difficulty/previous_difficulty"}},{"text":"Normal ☯","color":"#E4EB18","hoverEvent":{"action":"show_text","contents":[{"text":"Normal","color":"#E4EB18"},{"text":" is the default difficulty with modifiers just the way they were intended — not too easy but not too hard.","color":"#ECEFF5"}]}},{"text":"    [→]","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to increase the difficulty.","color"minecraft_but.coreEFF5"}]},"clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/troglodyte/difficulty/next_difficulty"}},"\n"]
            # Hard
            execute unless score difficulty.troglodyte minecraft_but.config matches 0..3 if score difficulty.global minecraft_but.config matches 3 run tellraw @s [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","minecraft_but.core":"/function minecraft_but.core:menu/modifiers/core/troglodyte/difficulty/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"rminecraft_but.coremmand","value":"/function minecraft_but.core:menu/modifiers/core/troglodyte/difficulty/reset"}},{"text":"]","color":"#FF0000","clickEvent"minecraft_but.coretion":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/troglodyte/difficulty/reset"}},{"text":" Difficulty: ","color":"#20CBA8"},{"text":"[←]     ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to decrease the difficulty.","color":"#ECEFF5"}]}minecraft_but.coreckEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/troglodyte/difficulty/previous_difficulty"}},{"text":"Hard ☠","color":"#FF0000","hoverEvent":{"action":"show_text","contents":[{"text":"Hard","color":"#FF0000"},{"text":" is the most brutal difficulty for people who like absolute destruction and chaos. Destruction? Certainly. Death? More than you can count. Lag? Oh yeah! Fun? ¯\\_(ツ)_/¯","color":"#ECEFF5"}]}},{"text":"     [→]","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to increase the difficulty.","color"minecraft_but.coreEFF5"}]},"clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/troglodyte/difficulty/next_difficulty"}},"\n"]

            #> Modifier-specific difficulty (local difficulty)
            execute if score difficulty.troglodyte minecraft_but.config matches 0 run tellraw @s [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/minecraft_but.coreion minecraft_but.core:menu/modifiers/core/troglodyte/difficulty/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_commanminecraft_but.corealue":"/function minecraft_but.core:menu/modifiers/core/troglodyte/difficulty/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"actionminecraft_but.coren_command","value":"/function minecraft_but.core:menu/modifiers/core/troglodyte/difficulty/reset"}},{"text":" Difficulty: ","color":"#20CBA8"},{"text":"[←]  ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to decrease the difficulty.","color":"#ECEFF5"}]},"clickEvminecraft_but.core{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/troglodyte/difficulty/previous_difficulty"}},{"text":"Peaceful ☮","color":"#44F044","hoverEvent":{"action":"show_text","contents":[{"text":"Peaceful","color":"#44F044"},{"text":" is just as its name implies: peaceful! Is it perfectly easy and relaxing? Yes! Is it fun? Well...","color":"#ECEFF5"}]}},{"text":"  [→]","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to increase the difficulty.","color":"#ECEFF5minecraft_but.core"clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/troglodyte/difficulty/next_difficulty"}},"\n"]
            execute if score difficulty.troglodyte minecraft_but.config matches 1 run tellraw @s [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/minecraft_but.coreion minecraft_but.core:menu/modifiers/core/troglodyte/difficulty/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_commanminecraft_but.corealue":"/function minecraft_but.core:menu/modifiers/core/troglodyte/difficulty/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"actionminecraft_but.coren_command","value":"/function minecraft_but.core:menu/modifiers/core/troglodyte/difficulty/reset"}},{"text":" Difficulty: ","color":"#20CBA8"},{"text":"[←]     ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to decrease the difficulty.","color":"#ECEFF5"}]},"clickEvminecraft_but.core{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/troglodyte/difficulty/previous_difficulty"}},{"text":"Easy ☺","color":"#3ED011","hoverEvent":{"action":"show_text","contents":[{"text":"Easy","color":"#3ED011"},{"text":" is the difficulty for people looking for a relaxed, casual experience. Don't listen to your friends! Oh, you don't have friends? Uh... Anyway, You're not a chicken! You're just...","color":"#ECEFF5"}]}},{"text":"     [→]","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to increase the difficulty.","color":"#ECEFF5minecraft_but.core"clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/troglodyte/difficulty/next_difficulty"}},"\n"]
            execute if score difficulty.troglodyte minecraft_but.config matches 2 run tellraw @s [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/minecraft_but.coreion minecraft_but.core:menu/modifiers/core/troglodyte/difficulty/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_commanminecraft_but.corealue":"/function minecraft_but.core:menu/modifiers/core/troglodyte/difficulty/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"actionminecraft_but.coren_command","value":"/function minecraft_but.core:menu/modifiers/core/troglodyte/difficulty/reset"}},{"text":" Difficulty: ","color":"#20CBA8"},{"text":"[←]   ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to decrease the difficulty.","color":"#ECEFF5"}]},"clickEvminecraft_but.core{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/troglodyte/difficulty/previous_difficulty"}},{"text":"Normal ☯","color":"#E4EB18","hoverEvent":{"action":"show_text","contents":[{"text":"Normal","color":"#E4EB18"},{"text":" is the default difficulty with modifiers just the way they were intended — not too easy but not too hard.","color":"#ECEFF5"}]}},{"text":"    [→]","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to increase the difficulty.","color":"#ECEFF5minecraft_but.core"clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/troglodyte/difficulty/next_difficulty"}},"\n"]
            execute if score difficulty.troglodyte minecraft_but.config matches 3 run tellraw @s [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/minecraft_but.coreion minecraft_but.core:menu/modifiers/core/troglodyte/difficulty/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_commanminecraft_but.corealue":"/function minecraft_but.core:menu/modifiers/core/troglodyte/difficulty/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"actionminecraft_but.coren_command","value":"/function minecraft_but.core:menu/modifiers/core/troglodyte/difficulty/reset"}},{"text":" Difficulty: ","color":"#20CBA8"},{"text":"[←]     ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to decrease the difficulty.","color":"#ECEFF5"}]},"clickEvminecraft_but.core{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/troglodyte/difficulty/previous_difficulty"}},{"text":"Hard ☠","color":"#FF0000","hoverEvent":{"action":"show_text","contents":[{"text":"Hard","color":"#FF0000"},{"text":" is the most brutal difficulty for people who like absolute destruction and chaos. Destruction? Certainly. Death? More than you can count. Lag? Oh yeah! Fun? ¯\\_(ツ)_/¯","color":"#ECEFF5"}]}},{"text":"     [→]","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to increase the difficulty.","color":"#ECEFF5minecraft_but.core"clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/troglodyte/difficulty/next_difficulty"}},"\n"]