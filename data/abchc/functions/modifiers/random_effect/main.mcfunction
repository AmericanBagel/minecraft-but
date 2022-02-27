

execute if score .global abch.timer matches 1200.. run function abchc:modifiers/random_effect/effect
execute unless score r_effect_repeat abch.toggle matches 0 if score .global abch.timer matches 1200.. if predicate abchc:50pct run function abchc:modifiers/random_effect/effect
execute unless score r_effect_repeat abch.toggle matches 0 if score .global abch.timer matches 1200.. if predicate abchc:25pct run function abchc:modifiers/random_effect/effect
execute unless score r_effect_repeat abch.toggle matches 0 if score .global abch.timer matches 1200.. if predicate abchc:10pct run function abchc:modifiers/random_effect/effect
execute unless score r_effect_repeat abch.toggle matches 0 if score .global abch.timer matches 1200.. if predicate abchc:10pct run function abchc:modifiers/random_effect/effect
execute unless score r_effect_repeat abch.toggle matches 0 if score .global abch.timer matches 1200.. if predicate abchc:5pct run function abchc:modifiers/random_effect/effect
execute unless score r_effect_repeat abch.toggle matches 0 if score .global abch.timer matches 1200.. if predicate abchc:025pct run function abchc:modifiers/random_effect/effect
