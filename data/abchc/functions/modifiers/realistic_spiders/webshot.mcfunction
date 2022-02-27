summon falling_block ~ ~ ~ {Motion: [ 0.0d, 0.25d, 0.5d ], NoGravity: 0b, Time: 1, BlockState: {Name: "minecraft:cobweb"}, CustomName: '{"text":"web1"}'}
summon armor_stand ~ ~ ~ {CustomName: '{"text":"web_rider1"}', Tags: [ "web_rider" ]}
summon falling_block ~ ~ ~ {Motion: [ 0.0d, 0.25d, -0.5d ], NoGravity: 0b, Time: 1, BlockState: {Name: "minecraft:cobweb"}, CustomName: '{"text":"web2"}'}
summon armor_stand ~ ~ ~ {CustomName: '{"text":"web_rider2"}', Tags: [ "web_rider" ]}
summon falling_block ~ ~ ~ {Motion: [ 0.5d, 0.25d, 0.0d ], NoGravity: 0b, Time: 1, BlockState: {Name: "minecraft:cobweb"}, CustomName: '{"text":"web3"}'}
summon armor_stand ~ ~ ~ {CustomName: '{"text":"web_rider3"}', Tags: [ "web_rider" ]}
summon falling_block ~ ~ ~ {Motion: [ -0.5d, 0.25d, 0.0d ], NoGravity: 0b, Time: 1, BlockState: {Name: "minecraft:cobweb"}, CustomName: '{"text":"web4"}'}
summon armor_stand ~ ~ ~ {CustomName: '{"text":"web_rider4"}', Tags: [ "web_rider" ]}
summon falling_block ~ ~ ~ {Motion: [ 0.5d, 0.25d, 0.5d ], NoGravity: 0b, Time: 1, BlockState: {Name: "minecraft:cobweb"}, CustomName: '{"text":"web5"}'}
summon armor_stand ~ ~ ~ {CustomName: '{"text":"web_rider5"}', Tags: [ "web_rider" ]}
summon falling_block ~ ~ ~ {Motion: [ 0.5d, 0.25d, -0.5d ], NoGravity: 0b, Time: 1, BlockState: {Name: "minecraft:cobweb"}, CustomName: '{"text":"web6"}'}
summon armor_stand ~ ~ ~ {CustomName: '{"text":"web_rider6"}', Tags: [ "web_rider" ]}
summon falling_block ~ ~ ~ {Motion: [ -0.5d, 0.25d, 0.5d ], NoGravity: 0b, Time: 1, BlockState: {Name: "minecraft:cobweb"}, CustomName: '{"text":"web7"}'}
summon armor_stand ~ ~ ~ {CustomName: '{"text":"web_rider7"}', Tags: [ "web_rider" ]}
summon falling_block ~ ~ ~ {Motion: [ -0.5d, 0.25d, -0.5d ], NoGravity: 0b, Time: 1, BlockState: {Name: "minecraft:cobweb"}, CustomName: '{"text":"web8"}'}
summon armor_stand ~ ~ ~ {CustomName: '{"text":"web_rider8"}', Tags: [ "web_rider" ]}

playsound minecraft:entity.spider.ambient hostile @a[ tag=!blacklist, tag=!global.ignore ] ~ ~ ~ 1 0.35
scoreboard players set @s abch.webCdwn 0