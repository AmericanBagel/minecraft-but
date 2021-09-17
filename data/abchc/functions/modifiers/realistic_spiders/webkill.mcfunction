setblock ~ ~ ~ air
particle minecraft:block minecraft:cobweb ~ ~ ~ .5 .5 .5 1 10 normal @a
playsound minecraft:block.wool.break block @a ~ ~ ~ 1 0.5
particle sneeze ~ ~ ~ 1 1 1 3 10 normal @a
effect give @a[distance=..5,gamemode=survival,tag=!abch_blacklist] poison 5 0 true
effect give @a[distance=..5,gamemode=survival,tag=!abch_blacklist] blindness 5 0 true