### Column 1 
## Modifier Items

# 1 - 2020 Mode
data modify entity @s Items insert 0 value {Slot: 0b, id: "minecraft:player_head", Count: 1b, tag: {display: {Name: '{"text":"2020 Mode","color":"red","bold":"true","italic":"false"}', Lore: [ '{"text":"Players within 2","color":"#d1d1d1","italic":"false"}', '{"text":"meters of another","color":"#d1d1d1","italic":"false"}', '{"text":"player take damage.","color":"#d1d1d1","italic":"false"}' ]}, SkullOwner: {Id: [I; -1958068806 , 2134658217 , -1636862049 , 108210399 ], Properties: {textures: [ {Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWQ5MjRkNDE0YjM0ZTM4ZjBiOGM0OGIwZTliYjY0YjNlZmY2OTQxNTczNmM3ZDc2NGQxYjNlYWI3OTU4NDc3YyJ9fX0="} ]}}, HideFlags: 32, abch: {isMenu: 1b, page: 20, selection: 1}}}

# 2 - Anvil Rain
data modify entity @s Items insert 0 value {Slot: 1b, id: "minecraft:anvil", Count: 1b, tag: {display: {Name: '{"text":"Anvil Rain","color":"#735ED1","bold":"true","italic":"false"}', Lore: [ '{"text":"Anvils rain from the sky.","color":"#d1d1d1","italic":"false"}' ]}, HideFlags: 32, abch: {isMenu: 1b, page: 20, selection: 2}}}

# 3 - Anemia-induced Nausea
data modify entity @s Items insert 0 value {Slot: 2b, id: "minecraft:poisonous_potato", Count: 1b, tag: {display: {Name: '{"text":"Anemia-induced Nausea","color":"#98D15E","bold":"true","italic":"false"}', Lore: [ '{"text":"Taking damage causes nausea.","color":"#d1d1d1","italic":"false"}' ]}, HideFlags: 32, abch: {isMenu: 1b, page: 20, selection: 3}}}

# 4 - Blinding Damage
data modify entity @s Items insert 0 value {Slot: 3b, id: "minecraft:ender_eye", Count: 1b, tag: {display: {Name: '{"text":"Blinding Damage","color":"#D15E86","bold":"true","italic":"false"}', Lore: [ '{"text":"Taking damage blinds","color":"#d1d1d1","italic":"false"}', '{"text":"players temporarily.","color":"#d1d1d1","italic":"false"}' ]}, HideFlags: 32, abch: {isMenu: 1b, page: 20, selection: 4}}}

# 5 - Blindness
data modify entity @s Items insert 0 value {Slot: 4b, id: "minecraft:ender_pearl", Count: 1b, tag: {display: {Name: '{"text":"Blindness","color":"#5e0e27","italic":"false","bold":"true"}', Lore: [ '{"text":"Players are blinded.","italic":"false","color":"#d1d1d1"}' ]}, HideFlags: 32, abch: {isMenu: 1b, page: 20, selection: 5}}}

# 6 - Confetti funeral
data modify entity @s Items insert 0 value {Slot: 5b, id: "minecraft:poppy", Count: 1b, tag: {display: {Name: '["",{"text":"C","bold":true,"italic":false,"color":"red"},{"text":"o","bold":true,"italic":false,"color":"yellow"},{"text":"n","bold":true,"italic":false,"color":"green"},{"text":"f","bold":true,"italic":false,"color":"blue"},{"text":"e","bold":true,"italic":false,"color":"red"},{"text":"t","bold":true,"italic":false,"color":"yellow"},{"text":"t","bold":true,"italic":false,"color":"green"},{"text":"i","bold":true,"italic":false,"color":"blue"},{"text":" funeral","bold":true,"italic":false,"color":"gray"}]', Lore: [ '{"text":"Who says funerals","italic":"false","color":"#d1d1d1"}', '{"text":"can\'t be fun?","italic":"false","color":"#d1d1d1"}' ]}, HideFlags: 32, abch: {isMenu: 1b, page: 20, selection: 6}}}

# 7 - Creeper Nukes
data modify entity @s Items insert 0 value {Slot: 6b, id: "minecraft:creeper_spawn_egg", Count: 1b, tag: {display: {Name: '{"text":"Creeper Nukes","color":"#09bc18","bold":"true","italic":"false"}', Lore: [ '{"text":"Give me a hug!","color":"#d1d1d1","italic":"false"}' ]}, HideFlags: 32, abch: {isMenu: 1b, page: 20, selection: 7}}}

# 8 - Creeper reinforcements
data modify entity @s Items insert 0 value {Slot: 7b, id: "minecraft:player_head", Count: 1b, tag: {display: {Name: '{"text":"Creeper reinforcements","color":"#04750e","bold":"true","italic":"false"}', Lore: [ '{"text":"Calling reinforcements!","color":"#d1d1d1","italic":"false"}' ]}, SkullOwner: {Properties: {textures: [ {Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmY4MjI1N2YzMmM0NDkwZWQ5MDMxOGYwYTU1MWY5ZDc5Y2NkNjg3Zjk1YTBiMTk1Yjc2MTU5MGQwYTA4MGQwYyJ9fX0="} ]}, Id: [I; -556354036 , 1016810813 , -2121436026 , -2743907 ]}, HideFlags: 32, abch: {isMenu: 1b, page: 20, selection: 8}}}

# 9 - Deadly Falls
data modify entity @s Items insert 0 value {Slot: 8b, id: "minecraft:elytra", Count: 1b, tag: {display: {Name: '{"text":"Deadly Falls","color":"#0ab59b","bold":"true","italic":"false"}', Lore: [ '{"text":"Any fall damage","color":"#d1d1d1","italic":"false"}', '{"text":"becomes lethal.","color":"#d1d1d1","italic":"false"}' ]}, HideFlags: 32, abch: {isMenu: 1b, page: 20, selection: 9}}}

### Column 2
## Toggle Panes

# 10 - 2020 Mode
execute if score 2020_mode abch.toggle matches 1 run data modify entity @s Items insert 0 value {Slot: 9b, id: "minecraft:lime_stained_glass_pane", Count: 1b, tag: {display: {Name: '{"text":"ON","bold":"true","italic":"false","color":"#00cc00"}', Lore: [ '{"text":"Click to toggle off.","italic":"false","color":"#aaaaaa"}' ]}, HideFlags: 32, abch: {isMenu: 1b, page: 20, selection: 10}}}
execute unless score 2020_mode abch.toggle matches 1 run data modify entity @s Items insert 0 value {Slot: 9b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {display: {Name: '{"text":"OFF","bold":"true","italic":"false","color":"#cc0000"}', Lore: [ '{"text":"Click to toggle on.","italic":"false","color":"#aaaaaa"}' ]}, HideFlags: 32, abch: {isMenu: 1b, page: 20, selection: 10}}}

# 11 - Anvil Rain
execute if score anvil_rain abch.toggle matches 1 run data modify entity @s Items insert 0 value {Slot: 10b, id: "minecraft:lime_stained_glass_pane", Count: 1b, tag: {display: {Name: '{"text":"ON","bold":"true","italic":"false","color":"#00cc00"}', Lore: [ '{"text":"Click to toggle off.","italic":"false","color":"#aaaaaa"}' ]}, HideFlags: 32, abch: {isMenu: 1b, page: 20, selection: 11}}}
execute unless score .* abch.toggle matches 1 run data modify entity @s Items insert 0 value {Slot: 10b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {display: {Name: '{"text":"OFF","bold":"true","italic":"false","color":"#cc0000"}', Lore: [ '{"text":"Click to toggle on.","italic":"false","color":"#aaaaaa"}' ]}, HideFlags: 32, abch: {isMenu: 1b, page: 20, selection: 11}}}

# 12 - Anemia-induced Nausea
execute if score damage_nausea abch.toggle matches 1 run data modify entity @s Items insert 0 value {Slot: 11b, id: "minecraft:lime_stained_glass_pane", Count: 1b, tag: {display: {Name: '{"text":"ON","bold":"true","italic":"false","color":"#00cc00"}', Lore: [ '{"text":"Click to toggle off.","italic":"false","color":"#aaaaaa"}' ]}, HideFlags: 32, abch: {isMenu: 1b, page: 20, selection: 12}}}
execute unless score .* abch.toggle matches 1 run data modify entity @s Items insert 0 value {Slot: 11b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {display: {Name: '{"text":"OFF","bold":"true","italic":"false","color":"#cc0000"}', Lore: [ '{"text":"Click to toggle on.","italic":"false","color":"#aaaaaa"}' ]}, HideFlags: 32, abch: {isMenu: 1b, page: 20, selection: 12}}}

# 13 - Blinding Damage
execute if score blinding_damage abch.toggle matches 1 run data modify entity @s Items insert 0 value {Slot: 12b, id: "minecraft:lime_stained_glass_pane", Count: 1b, tag: {display: {Name: '{"text":"ON","bold":"true","italic":"false","color":"#00cc00"}', Lore: [ '{"text":"Click to toggle off.","italic":"false","color":"#aaaaaa"}' ]}, HideFlags: 32, abch: {isMenu: 1b, page: 20, selection: 13}}}
execute unless score .* abch.toggle matches 1 run data modify entity @s Items insert 0 value {Slot: 12b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {display: {Name: '{"text":"OFF","bold":"true","italic":"false","color":"#cc0000"}', Lore: [ '{"text":"Click to toggle on.","italic":"false","color":"#aaaaaa"}' ]}, HideFlags: 32, abch: {isMenu: 1b, page: 20, selection: 13}}}

# 14 - Blindness
execute if score blindness abch.toggle matches 1 run data modify entity @s Items insert 0 value {Slot: 13b, id: "minecraft:lime_stained_glass_pane", Count: 1b, tag: {display: {Name: '{"text":"ON","bold":"true","italic":"false","color":"#00cc00"}', Lore: [ '{"text":"Click to toggle off.","italic":"false","color":"#aaaaaa"}' ]}, HideFlags: 32, abch: {isMenu: 1b, page: 20, selection: 14}}}
execute unless score .* abch.toggle matches 1 run data modify entity @s Items insert 0 value {Slot: 13b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {display: {Name: '{"text":"OFF","bold":"true","italic":"false","color":"#cc0000"}', Lore: [ '{"text":"Click to toggle on.","italic":"false","color":"#aaaaaa"}' ]}, HideFlags: 32, abch: {isMenu: 1b, page: 20, selection: 14}}}

# 15 - Confetti Funeral
execute if score confetti_funeral abch.toggle matches 1 run data modify entity @s Items insert 0 value {Slot: 14b, id: "minecraft:lime_stained_glass_pane", Count: 1b, tag: {display: {Name: '{"text":"ON","bold":"true","italic":"false","color":"#00cc00"}', Lore: [ '{"text":"Click to toggle off.","italic":"false","color":"#aaaaaa"}' ]}, HideFlags: 32, abch: {isMenu: 1b, page: 20, selection: 15}}}
execute unless score .* abch.toggle matches 1 run data modify entity @s Items insert 0 value {Slot: 14b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {display: {Name: '{"text":"OFF","bold":"true","italic":"false","color":"#cc0000"}', Lore: [ '{"text":"Click to toggle on.","italic":"false","color":"#aaaaaa"}' ]}, HideFlags: 32, abch: {isMenu: 1b, page: 20, selection: 15}}}

# 16 - Creeper Nukes
execute if score creeper_nukes abch.toggle matches 1 run data modify entity @s Items insert 0 value {Slot: 15b, id: "minecraft:lime_stained_glass_pane", Count: 1b, tag: {display: {Name: '{"text":"ON","bold":"true","italic":"false","color":"#00cc00"}', Lore: [ '{"text":"Click to toggle off.","italic":"false","color":"#aaaaaa"}' ]}, HideFlags: 32, abch: {isMenu: 1b, page: 20, selection: 16}}}
execute unless score .* abch.toggle matches 1 run data modify entity @s Items insert 0 value {Slot: 15b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {display: {Name: '{"text":"OFF","bold":"true","italic":"false","color":"#cc0000"}', Lore: [ '{"text":"Click to toggle on.","italic":"false","color":"#aaaaaa"}' ]}, HideFlags: 32, abch: {isMenu: 1b, page: 20, selection: 16}}}

# 17 - Creeper Reinforcements
execute if score creeper_reinf abch.toggle matches 1 run data modify entity @s Items insert 0 value {Slot: 16b, id: "minecraft:lime_stained_glass_pane", Count: 1b, tag: {display: {Name: '{"text":"ON","bold":"true","italic":"false","color":"#00cc00"}', Lore: [ '{"text":"Click to toggle off.","italic":"false","color":"#aaaaaa"}' ]}, HideFlags: 32, abch: {isMenu: 1b, page: 20, selection: 17}}}
execute unless score .* abch.toggle matches 1 run data modify entity @s Items insert 0 value {Slot: 16b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {display: {Name: '{"text":"OFF","bold":"true","italic":"false","color":"#cc0000"}', Lore: [ '{"text":"Click to toggle on.","italic":"false","color":"#aaaaaa"}' ]}, HideFlags: 32, abch: {isMenu: 1b, page: 20, selection: 17}}}

# 18 - Deadly Falls
execute if score deadly_falls abch.toggle matches 1 run data modify entity @s Items insert 0 value {Slot: 17b, id: "minecraft:lime_stained_glass_pane", Count: 1b, tag: {display: {Name: '{"text":"ON","bold":"true","italic":"false","color":"#00cc00"}', Lore: [ '{"text":"Click to toggle off.","italic":"false","color":"#aaaaaa"}' ]}, HideFlags: 32, abch: {isMenu: 1b, page: 20, selection: 18}}}
execute unless score .* abch.toggle matches 1 run data modify entity @s Items insert 0 value {Slot: 17b, id: "minecraft:red_stained_glass_pane", Count: 1b, tag: {display: {Name: '{"text":"OFF","bold":"true","italic":"false","color":"#cc0000"}', Lore: [ '{"text":"Click to toggle on.","italic":"false","color":"#aaaaaa"}' ]}, HideFlags: 32, abch: {isMenu: 1b, page: 20, selection: 18}}}

## Column 3
# Bottom Menu
data modify entity @s Items insert 0 value {Slot: 18b, id: "minecraft:gray_stained_glass_pane", Count: 1b, tag: {display: {Name: '{"text":" "}'}, HideFlags: 32, abch: {isMenu: 1b, page: 20, selection: 19}}}
data modify entity @s Items insert 0 value {Slot: 19b, id: "minecraft:gray_stained_glass_pane", Count: 1b, tag: {display: {Name: '{"text":" "}'}, HideFlags: 32, abch: {isMenu: 1b, page: 20, selection: 20}}}
data modify entity @s Items insert 0 value {Slot: 20b, id: "minecraft:gray_stained_glass_pane", Count: 1b, tag: {display: {Name: '{"text":" "}'}, HideFlags: 32, abch: {isMenu: 1b, page: 20, selection: 21}}}
data modify entity @s Items insert 0 value {Slot: 21b, id: "minecraft:gray_stained_glass_pane", Count: 1b, tag: {display: {Name: '{"text":" "}'}, HideFlags: 32, abch: {isMenu: 1b, page: 20, selection: 22}}}
data modify entity @s Items insert 0 value {Slot: 22b, id: "minecraft:barrier", Count: 1b, tag: {display: {Name: '{"text":"Back","color":"red","bold":"true","italic":"false"}'}, HideFlags: 32, abch: {isMenu: 1b, page: 1, selection: 23}}}
data modify entity @s Items insert 0 value {Slot: 23b, id: "minecraft:gray_stained_glass_pane", Count: 1b, tag: {display: {Name: '{"text":" "}'}, HideFlags: 32, abch: {isMenu: 1b, page: 20, selection: 24}}}
data modify entity @s Items insert 0 value {Slot: 24b, id: "minecraft:gray_stained_glass_pane", Count: 1b, tag: {display: {Name: '{"text":" "}'}, HideFlags: 32, abch: {isMenu: 1b, page: 20, selection: 25}}}
data modify entity @s Items insert 0 value {Slot: 25b, id: "minecraft:gray_stained_glass_pane", Count: 1b, tag: {display: {Name: '{"text":" "}'}, HideFlags: 32, abch: {isMenu: 1b, page: 20, selection: 26}}}
data modify entity @s Items insert 0 value {Slot: 26b, id: "minecraft:player_head", Count: 1b, tag: {display: {Name: '{"text":"Next Page","bold":"true","italic":"false"}'}, SkullOwner: {Id: [I; -493596904 , -392147216 , -2109924809 , -1206338158 ], Properties: {textures: [ {Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTU2YTM2MTg0NTllNDNiMjg3YjIyYjdlMjM1ZWM2OTk1OTQ1NDZjNmZjZDZkYzg0YmZjYTRjZjMwYWI5MzExIn19fQ=="} ]}}, HideFlags: 32, abch: {isMenu: 1b, page: 20, selection: 27}}}