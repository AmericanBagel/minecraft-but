#> abchc:menu/gui
#
# Main GUI function for getting page and selection numbers,
# navigating players accordingly, and other general GUI actions.

#> Prep
# Get page and selection numbers in
#   @p abch.menu.page
#   @p abch.menu.selection
function abchc:menu/get_page
function abchc:menu/get_selection

# Reset bool
scoreboard players set @s abch.menu.bool 0

#> Pages
# Navigate to every page
function abchc:menu/pages

#> Final
clear @p[tag=abch.menu.this] #abchc:chest_menu{abch: {isMenu: 1b}}