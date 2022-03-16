#> abchc:modifiers/troglodyte/main
# Main function for "Troglodyte" modifier
# Players take damage from light
# @within abchc:modifiers/directory
# @context root

#> Config
execute as @a[tag=!abch.blacklist] if score troglodyte.difficulty abch.config matches 1 run function abchc:modifiers/troglodyte/easy
execute as @a[tag=!abch.blacklist] if score troglodyte.difficulty abch.config matches 2 run function abchc:modifiers/troglodyte/normal
execute as @a[tag=!abch.blacklist] if score troglodyte.difficulty abch.config matches 3 run function abchc:modifiers/troglodyte/hard

#> Default
execute as @a[tag=!abch.blacklist] unless score troglodyte.difficulty abch.config matches -2147483648..2147483647 if score troglodyte.difficulty abch.default matches 1 run function abchc:modifiers/troglodyte/easy
execute as @a[tag=!abch.blacklist] unless score troglodyte.difficulty abch.config matches -2147483648..2147483647 if score troglodyte.difficulty abch.default matches 2 run function abchc:modifiers/troglodyte/normal
execute as @a[tag=!abch.blacklist] unless score troglodyte.difficulty abch.config matches -2147483648..2147483647 if score troglodyte.difficulty abch.default matches 3 run function abchc:modifiers/troglodyte/hard