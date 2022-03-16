#> abchc:menu/main
# Main chat page triggered by a player
# @user
# @within abchc:modifiers/menu/**

#> Update page score
scoreboard players set @s abch.menu.page 1

#> Top Bar
tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"---------------------------------------------","color":"#0F21C6"},"\n",{"text":"Minecraft, ","color":"#6BD716"},{"text":"but ","bold":true,"color":"#6BD716"},{"text":"— a data pack by ","color":"#ECEFF5"},{"text":"AmericanBagel","color":"#EB0DD7","hoverEvent": {"action": "show_text","contents":{"text":"The best of the best!","color":"#eceff5"}}},"\n",{"text":"---------------------------------------------","color":"#0F21C6"}]

#> Toggle button
# Show "ENABLE" if enabled
execute if score .global abch.toggle matches 1 run tellraw @s ["                        ",{"text":"[✔]","bold":true,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/actions/toggle"}},{"text":" ENABLED","color":"#3ED011","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to turn the data pack ","color":"#ECEFF5"},{"text":"OFF","bold":true,"color":"#FF0000"},{"text":".","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/actions/toggle"}}]

# Show "DISABLE" if disabled
execute if score .global abch.toggle matches 0 run tellraw @s ["                        ",{"text":"[✖]","bold":true,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/actions/toggle"}},{"text":" DISABLED","color":"#FF0000","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to turn the data pack ","color":"#ECEFF5"},{"text":"ON","bold":true,"color":"#3ED011"},{"text":".","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/actions/toggle"}}]

tellraw @s [{"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"text":"Information","color":"#E4EB18"},{"text":" page which has information about this data pack and how to use it.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/information"}},{"text":"Information","color":"#E4EB18","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"text":"Information","color":"#E4EB18"},{"text":" page.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/information"}},"\n",{"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"text":"Modifiers","color":"#CF2020"},{"text":" page which allows you to toggle and configure \"Minecraft, but\" gameplay modifiers.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers"}},{"text":"Modifiers","color":"#CF2020","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"text":"Modifiers","color":"#CF2020"},{"text":" page which allows you to toggle and configure \"Minecraft, but\" gameplay modifiers.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers"}},"\n",{"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"text":"Config","color":"#20CBA8"},{"text":" page which allows you to configure the data pack.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/config"}},{"text":"Config","color":"#20CBA8","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"text":"Config","color":"#20CBA8"},{"text":" page which allows you to configure the data pack.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/config"}},"\n",{"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"text":"Credits","color":"#A8A8A8"},{"text":" page which has a list of everyone who made this data pack possible!","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/credits"}},{"text":"Credits","color":"#A8A8A8","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"text":"Credits","color":"#A8A8A8"},{"text":" page which has a list of everyone who made this data pack possible!","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/credits"}},"\n",{"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"text":"Admin Panel","color":"#801212"},{"text":" page for including and excluding players from being affected by modifiers and for selecting who can configure the data pack.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/admin_panel"}},{"text":"Admin Panel","color":"#801212","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"text":"Admin Panel","color":"#801212"},{"text":" page for including and excluding players from being affected by modifiers and for selecting who can configure the data pack.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/admin_panel"}},"\n"]

#> Modifiers active
#execute unless score $total abch.toggle matches 1.. run tellraw @s {"text":"No modifiers active","color":"#CF2020"}
execute if score $total abch.toggle matches 1 run tellraw @s {"text":"One modifier active","color":"#17B7CD"}
execute if score $total abch.toggle matches 2.. run tellraw @s [{"score":{"name":"$total","objective":"abch.toggle"},"color":"#17B7CD"},{"text":" modifiers active","color":"#17B7CD"}]

#> Difficulty
execute if score difficulty.sync abch.config matches 1 if score difficulty.global abch.config matches 1 run tellraw @s [{"text":"Difficulty: ","color":"#20CBA8"},{"text":"←  ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to decrease the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/actions/previous_difficulty"}},{"text":"Easy ☮","color":"#3ED011","hoverEvent":{"action":"show_text","contents":[{"text":"Easy","color":"#3ED011"},{"text":" is the difficulty for people looking for a relaxed, casual experience. Don't listen to your friends! Oh, you don't have friends? Uh... Anyway, You're not a chicken! You're just...","color":"#ECEFF5"}]}},{"text":"  →","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to increase the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/actions/next_difficulty"}}]
execute if score difficulty.sync abch.config matches 1 if score difficulty.global abch.config matches 2 run tellraw @s [{"text":"Difficulty: ","color":"#20CBA8"},{"text":"← ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to decrease the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/actions/previous_difficulty"}},{"text":"Normal ☯","color":"#E4EB18","hoverEvent":{"action":"show_text","contents":[{"text":"Normal","color":"#E4EB18"},{"text":" is the default difficulty with modifiers just the way they were intended — not too easy but not too hard.","color":"#ECEFF5"}]}},{"text":" →","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to increase the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/actions/next_difficulty"}}]
execute if score difficulty.sync abch.config matches 1 if score difficulty.global abch.config matches 3 run tellraw @s [{"text":"Difficulty: ","color":"#20CBA8"},{"text":"←  ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to decrease the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/actions/previous_difficulty"}},{"text":"Hard ☠","color":"#FF0000","hoverEvent":{"action":"show_text","contents":[{"text":"Hard","color":"#FF0000"},{"text":" is the most brutal difficulty for people who like absolute destruction and chaos. Destruction? Certainly. Death? More than you can count. Fun? ¯\\_(ツ)_/¯","color":"#ECEFF5"}]}},{"text":"  →","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to increase the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/actions/next_difficulty"}}]

#> Expansion Packs
execute if score $1 abch.difficulty matches 1 run tellraw @p {"nbt":"title","storage":"abch.ex1","interpret":true}
execute if score $1 abch.difficulty matches 2 run tellraw @p {"nbt":"title","storage":"abch.ex2","interpret":true}
execute if score $1 abch.difficulty matches 3 run tellraw @p {"nbt":"title","storage":"abch.ex3","interpret":true}
execute if score $1 abch.difficulty matches 4 run tellraw @p {"nbt":"title","storage":"abch.ex4","interpret":true}
execute if score $1 abch.difficulty matches 5 run tellraw @p {"nbt":"title","storage":"abch.ex5","interpret":true}
execute if score $1 abch.difficulty matches 6 run tellraw @p {"nbt":"title","storage":"abch.ex6","interpret":true}
execute if score $1 abch.difficulty matches 7 run tellraw @p {"nbt":"title","storage":"abch.ex7","interpret":true}
execute if score $1 abch.difficulty matches 8 run tellraw @p {"nbt":"title","storage":"abch.ex8","interpret":true}
execute if score $1 abch.difficulty matches 9 run tellraw @p {"nbt":"title","storage":"abch.ex9","interpret":true}

#,"clickEvent":{"action":"run_command","value":"/function abchc:menu/"}

# ---------------------------------------------
# Minecraft, but - a data pack by AmericanBagel
# ---------------------------------------------
# [✔] ENABLED / [✖] DISABLED
#
#  |→ Information 
#  |→ Modifiers 
#  |→ Credits
# (if player is admin)
#  |→ Admin Panel
#
# (if modifiers are active)
# abch.toggle@$total modifiers active
# Difficulty: ← Easy / ☮Normal / ☯Hard ☠ →