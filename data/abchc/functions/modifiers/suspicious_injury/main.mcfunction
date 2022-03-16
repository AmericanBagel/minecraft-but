execute as @a[ scores={ abch.suspicious_injury.damage=1 } ] at @s run function abchc:modifiers/suspicious_injury/lvl/1
execute as @a[ scores={ abch.suspicious_injury.damage=2 } ] at @s run function abchc:modifiers/suspicious_injury/lvl/2
execute as @a[ scores={ abch.suspicious_injury.damage=3 } ] at @s run function abchc:modifiers/suspicious_injury/lvl/3
execute as @a[ scores={ abch.suspicious_injury.damage=4 } ] at @s run function abchc:modifiers/suspicious_injury/lvl/4
execute as @a[ scores={ abch.suspicious_injury.damage=5 } ] at @s run function abchc:modifiers/suspicious_injury/lvl/5
execute as @a[ scores={ abch.suspicious_injury.damage=6 } ] at @s run function abchc:modifiers/suspicious_injury/lvl/6
execute as @a[ scores={ abch.suspicious_injury.damage=7 } ] at @s run function abchc:modifiers/suspicious_injury/lvl/7
execute as @a[ scores={ abch.suspicious_injury.damage=8 } ] at @s run function abchc:modifiers/suspicious_injury/lvl/8
execute as @a[ scores={ abch.suspicious_injury.damage=9 } ] at @s run function abchc:modifiers/suspicious_injury/lvl/9
execute as @a[ scores={ abch.suspicious_injury.damage=10.. } ] at @s run function abchc:modifiers/suspicious_injury/lvl/10

scoreboard players reset @a[ tag=!blacklist, tag=!global.ignore ] abch.suspicious_injury.damage