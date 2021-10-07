execute as @a[tag=!abch.blacklist] unless block ~ ~ ~ water run effect give @s wither 1 0 true
execute as @a[tag=!abch.blacklist] unless block ~ ~ ~ water run title @s title {"text":"Get back in the water!","color":"aqua","bold":true}
execute as @a[tag=!abch.blacklist] unless block ~ ~ ~ water run title @s subtitle {"text":"You're suffocating!","color":"red"}
execute as @a[tag=!abch.blacklist] unless block ~ ~ ~ water run title @s times 0 1 1