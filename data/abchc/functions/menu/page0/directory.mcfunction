#> abchc:menu/page0/directory
#
# Main function for GUI main menu which runs commands based on which item was selected
#
# @context gui
#
# @within abchc:menu/pages
#
# @input
#   score @p[tag=abch.menu.this] abch.menu.selection
#       The slot where a player clicked in the GUI
# @output
#   score @p[tag=abch.menu.this] abch.menu.page
#       The page number the GUI should be set to
#   score .global abch.toggle
#       Universal data-pack kill switch

scoreboard players set @p[ tag=abch.menu.this ] abch.menu.bool 1

##execute if score @p[tag=abch.menu.this] abch.menu.selection matches 1 run scoreboard players set @p[tag=abch.menu.this] abch.menu.page 1

playsound minecraft:ui.button.click player @p[ tag=abch.menu.this ] ~ ~ ~ 0.4 1

execute if score @p[ tag=abch.menu.this ] abch.menu.selection matches 0 run say ERROR
execute if score @p[ tag=abch.menu.this ] abch.menu.selection matches 1 run function abchc:menu/page0/blank
execute if score @p[ tag=abch.menu.this ] abch.menu.selection matches 2 run function abchc:menu/page0/blank
execute if score @p[ tag=abch.menu.this ] abch.menu.selection matches 3 run function abchc:menu/page0/blank
execute if score @p[ tag=abch.menu.this ] abch.menu.selection matches 4 run function abchc:menu/page0/blank
execute if score @p[ tag=abch.menu.this ] abch.menu.selection matches 5 run function abchc:menu/page0/blank
execute if score @p[ tag=abch.menu.this ] abch.menu.selection matches 6 run function abchc:menu/page0/blank
execute if score @p[ tag=abch.menu.this ] abch.menu.selection matches 7 run function abchc:menu/page0/blank
execute if score @p[ tag=abch.menu.this ] abch.menu.selection matches 8 run function abchc:menu/page0/blank
execute if score @p[ tag=abch.menu.this ] abch.menu.selection matches 9 run function abchc:menu/page0/blank
execute if score @p[ tag=abch.menu.this ] abch.menu.selection matches 10 run function abchc:menu/page0/blank
execute if score @p[ tag=abch.menu.this ] abch.menu.selection matches 11 run scoreboard players set @p[ tag=abch.menu.this ] abch.menu.page 1
execute if score @p[ tag=abch.menu.this ] abch.menu.selection matches 12 run function abchc:menu/page0/blank
execute if score .global abch.toggle matches 1 if score @p[ tag=abch.menu.this ] abch.menu.selection matches 13 run scoreboard players set @p[ tag=abch.menu.this ] abch.toggle 0
execute if score .global abch.toggle matches 0 if score @p[ tag=abch.menu.this ] abch.menu.selection matches 13 run scoreboard players set @p[ tag=abch.menu.this ] abch.toggle 1
execute if score @p[ tag=abch.menu.this ] abch.menu.selection matches 14 run function abchc:menu/page0/blank
execute if score @p[ tag=abch.menu.this ] abch.menu.selection matches 15 run scoreboard players set @p[ tag=abch.menu.this ] abch.menu.page 5
execute if score @p[ tag=abch.menu.this ] abch.menu.selection matches 16 run function abchc:menu/page0/blank
execute if score @p[ tag=abch.menu.this ] abch.menu.selection matches 17 run scoreboard players set @p[ tag=abch.menu.this ] abch.menu.page 10
execute if score @p[ tag=abch.menu.this ] abch.menu.selection matches 18 run function abchc:menu/page0/blank
execute if score @p[ tag=abch.menu.this ] abch.menu.selection matches 19 run function abchc:menu/page0/blank
execute if score @p[ tag=abch.menu.this ] abch.menu.selection matches 20 run function abchc:menu/page0/blank
execute if score @p[ tag=abch.menu.this ] abch.menu.selection matches 21 run function abchc:menu/page0/blank
execute if score @p[ tag=abch.menu.this ] abch.menu.selection matches 22 run function abchc:menu/page0/blank
execute if score @p[ tag=abch.menu.this ] abch.menu.selection matches 23 run function abchc:menu/page0/blank
execute if score @p[ tag=abch.menu.this ] abch.menu.selection matches 24 run function abchc:menu/page0/blank
execute if score @p[ tag=abch.menu.this ] abch.menu.selection matches 25 run function abchc:menu/page0/blank
execute if score @p[ tag=abch.menu.this ] abch.menu.selection matches 26 run function abchc:menu/page0/blank
execute if score @p[ tag=abch.menu.this ] abch.menu.selection matches 27 run scoreboard players set @p[ tag=abch.menu.this ] abch.menu.page 11

execute if score @p[ tag=abch.menu.this ] abch.toggle matches 0..1 run function abchc:menu/page0/toggle