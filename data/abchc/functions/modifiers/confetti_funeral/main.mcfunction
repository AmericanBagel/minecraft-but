execute as @a[ tag=!abch.blacklist, scores={ abch.confetti_funeral.deaths=1.. } ] at @s run particle minecraft:firework ~ ~ ~ 0 0 0 .5 100 normal
execute as @a[ tag=!abch.blacklist, scores={ abch.confetti_funeral.deaths=1.. } ] at @s run summon firework_rocket ~ ~ ~ {LifeTime: 0, FireworksItem: {id: "firework_rocket", Count: 1, tag: {Fireworks: {Explosions: [ {Type: 0, Colors: [I; 16738922 ]}, {Type: 0, Colors: [I; 16056160 ]}, {Type: 0, Colors: [I; 7143271 ]}, {Type: 0, Colors: [I; 63487 ]}, {Type: 0, Colors: [I; 910704356 ]}, {Type: 1, Colors: [I; 16738922 ]}, {Type: 1, Colors: [I; 16056160 ]}, {Type: 1, Colors: [I; 7143271 ]}, {Type: 1, Colors: [I; 63487 ]}, {Type: 1, Colors: [I; 910704356 ]}, {Type: 4, Colors: [I; 16738922 ]}, {Type: 4, Colors: [I; 16056160 ]}, {Type: 4, Colors: [I; 7143271 ]}, {Type: 4, Colors: [I; 63487 ]}, {Type: 4, Colors: [I; 910704356 ]} ]}}}}
scoreboard players reset @a[ tag=!abch.blacklist, tag=!global.ignore ] abch.death