#> abchc:menu/pages
#
# Run page functions according to page number
#
# @context gui
#
# @within abchc:gui
#
# @input
#   score @p abch.menu.bool
#   score @p abch.menu.page
#       Current page number in GUI.

#> Core Pages
# Pages in the core pack

#> Page 0
# Landing page
execute if score @p abch.menu.bool matches 0 if score @p abch.menu.page matches 0 run function abchc:menu/page0/directory

#> Page 1
# Info page
execute if score @p abch.menu.bool matches 0 if score @p abch.menu.page matches 1 run function abchc:menu/page1/directory
execute if score @p abch.menu.bool matches 0 if score @p abch.menu.page matches 2 run function abchc:menu/page2/directory
execute if score @p abch.menu.bool matches 0 if score @p abch.menu.page matches 3 run function abchc:menu/page3/directory
execute if score @p abch.menu.bool matches 0 if score @p abch.menu.page matches 4 run function abchc:menu/page4/directory
execute if score @p abch.menu.bool matches 0 if score @p abch.menu.page matches 5 run function abchc:menu/page5/directory
execute if score @p abch.menu.bool matches 0 if score @p abch.menu.page matches 6 run function abchc:menu/page6/directory
execute if score @p abch.menu.bool matches 0 if score @p abch.menu.page matches 7 run function abchc:menu/page7/directory
execute if score @p abch.menu.bool matches 0 if score @p abch.menu.page matches 8 run function abchc:menu/page8/directory
execute if score @p abch.menu.bool matches 0 if score @p abch.menu.page matches 9 run function abchc:menu/page9/directory

#> Page 10
# Credits page
execute if score @p abch.menu.bool matches 0 if score @p abch.menu.page matches 10 run function abchc:menu/page10/directory

#> Page 11
# Admin page
execute if score @p abch.menu.bool matches 0 if score @p abch.menu.page matches 11 run function abchc:menu/page11/directory
#> Page 12
# Uninstall confirmation
execute if score @p abch.menu.bool matches 0 if score @p abch.menu.page matches 12 run function abchc:menu/page12/directory
execute if score @p abch.menu.bool matches 0 if score @p abch.menu.page matches 13 run function abchc:menu/page13/directory
execute if score @p abch.menu.bool matches 0 if score @p abch.menu.page matches 14 run function abchc:menu/page14/directory
execute if score @p abch.menu.bool matches 0 if score @p abch.menu.page matches 15 run function abchc:menu/page15/directory
execute if score @p abch.menu.bool matches 0 if score @p abch.menu.page matches 16 run function abchc:menu/page16/directory
execute if score @p abch.menu.bool matches 0 if score @p abch.menu.page matches 17 run function abchc:menu/page17/directory
execute if score @p abch.menu.bool matches 0 if score @p abch.menu.page matches 18 run function abchc:menu/page18/directory

#> Page 19
# Modifiers page
execute if score @p abch.menu.bool matches 0 if score @p abch.menu.page matches 19 run function abchc:menu/page19/directory

#> Page 20
# Core modifiers page 1
execute if score @p abch.menu.bool matches 0 if score @p abch.menu.page matches 20 run function abchc:menu/page20/directory
execute if score @p abch.menu.bool matches 0 if score @p abch.menu.page matches 21 run function abchc:menu/page21/directory
#############################