#> abchc:menu/modifiers/directory
# Modifiers page
# @user
# @within abchc:modifiers/menu/**

#> Click sound
function abchc:menu/actions/click

#> abchc:menu/main
# Main chat page triggered by a player
# @user
# @within abchc:modifiers/menu/**

#> Update page score
scoreboard players set @s abch.menu.page 10

#> Top Bar
tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"---------------------------------------------","color":"#0F21C6"},"\n",{"text":"←|","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/actions/back_to_main"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the main menu.","color":"#ECEFF5"}]}},{"text":" Modifiers","color":"#CF2020","clickEvent":{"action":"run_command","value":"/function abchc:menu/actions/back_to_main"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the main menu.","color":"#ECEFF5"}]}},"\n",{"text":"---------------------------------------------","color":"#0F21C6"}]

#> Core Modifiers
tellraw @s [{"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"text":"Core modifiers","color":"#17B7CD"},{"text":" page which has information about this data pack and how to use it.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/information"}},{"text":"Information","color":"#17B7CD","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"text":"Core modifiers","color":"#17B7CD"},{"text":" page.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/1"}}]

#> Expansion Packs
execute if score $1 abch.difficulty matches 1 run tellraw @p {"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"nbt":"title","storage":"abch.ex1","interpret":true},{"text":" page.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abch.ex1:menu/modifiers"}}
execute if score $2 abch.difficulty matches 1 run tellraw @p {"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"nbt":"title","storage":"abch.ex1","interpret":true},{"text":" page.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abch.ex2:menu/modifiers"}}
execute if score $3 abch.difficulty matches 1 run tellraw @p {"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"nbt":"title","storage":"abch.ex1","interpret":true},{"text":" page.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abch.ex3:menu/modifiers"}}
execute if score $4 abch.difficulty matches 1 run tellraw @p {"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"nbt":"title","storage":"abch.ex1","interpret":true},{"text":" page.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abch.ex4:menu/modifiers"}}
execute if score $5 abch.difficulty matches 1 run tellraw @p {"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"nbt":"title","storage":"abch.ex1","interpret":true},{"text":" page.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abch.ex5:menu/modifiers"}}