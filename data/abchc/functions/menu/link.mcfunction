#> abchc:menu/link
#
# Link player and GUI together for multiplayer compatibility
# by comparing their scores efficiently.
#
# Functions from here should use `@s` for the GUI and `@p[tag=abch.menu.this]` for the player.
#
# @context gui link
#
# @within abchc:menu/directory

# Set .search to player's sid
scoreboard players operation .search abch.menu.sid = @s abch.menu.sid

# Add this tag to player to select the right player
# in case `@p` is not the right player
tag @s add abch.menu.this

# Set bool to 0. If `actions` works,
# the bool will be overriden to 1.
scoreboard players set @s abch.menu.bool 0

# If there is a linked chest minecart, run actions
# with the GUI as `@s` and the player as `@p`
execute as @e[ type=chest_minecart, tag=abch.menu, predicate=abchc:menu/sid ] if score @s abch.menu.sid = .search abch.menu.sid run function abchc:menu/actions
tag @s remove abch.menu.this