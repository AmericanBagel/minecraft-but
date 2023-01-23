#> minecraft_but.core:menu/modifiers
# Modifiers page
# @user
# @within minecraft_but.core:modifiers/menu/**

#> If there are no expansion packs, go straight to core modifiers
execute unless score $total minecraft_but.expansion matches 1.. run function minecraft_but.core:menu/modifiers/core/categories
#> If there are expansion packs, list loaded expansion packs
execute if score $total minecraft_but.expansion matches 1.. run function minecraft_but.core:menu/modifiers/directory