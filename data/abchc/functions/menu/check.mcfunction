#> abchc:menu/check
#
# Check for a player clicking on an item in the GUI.
# If an item was selected, change and update GUI accordingly.
#
# @context gui
# 
# @within abchc:menu/directory
#
# @input
#	score @p abch.menu.item
#		Items cleared if any.

# Detect if player selected an item by clearing it into item
execute store result score @p abch.menu.item run clear @p #abchc:chest_menu{abch: {isMenu: 1b}} 0
# If it is above one, run gui function
execute if score @p abch.menu.item matches 1.. run function abchc:menu/gui