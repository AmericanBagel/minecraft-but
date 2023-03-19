#> abchc:menu/modifiers
# Modifiers page
# @user
# @within abchc:modifiers/menu/**

#> If there are no expansion packs, go straight to core modifiers
execute unless score $total abch.expansion matches 1.. run function abchc:menu/modifiers/core/categories
#> If there are expansion packs, list loaded expansion packs
execute if score $total abch.expansion matches 1.. run function abchc:menu/modifiers/directory