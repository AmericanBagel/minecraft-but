# Give player init tag for efficient ID linking
tag @p add init

# Summon chest minecart
summon chest_minecart ^ ^ ^2 {Tags: [ "abch", "abch.menu", "invisible_minecart", "global.ignore", "init" ], CustomName: '{"text":"Menu"}', CustomDisplayTile: 1, DisplayState: {Name: "minecraft:air"}, Silent: 1b, NoGravity:1b, Invulnerable: 1b}
scoreboard players set @s abch.isSpawned 1
# Set page to 0 (menu page)
scoreboard players set @s abch.menu.page 0

## ID Linking
# Add to global minecart count
scoreboard players add .global abch.menu.sid 1

# Set minecart's ID to the current global minecart count (for a unique ID shared with the player)
scoreboard players operation @e[ tag=abch.menu, sort=nearest, limit=1, tag=init ] abch.menu.sid = .global abch.menu.sid
# Set the player's ID to the current global minecart count (for a unique ID shared with the minecart)
scoreboard players operation @p[ tag=init ] abch.menu.sid = .global abch.menu.sid
# Remove init tag
tag @e[ tag=init ] remove init

say spawn