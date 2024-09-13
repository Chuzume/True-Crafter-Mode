
#スポーン時
execute if entity @s[tag=!TrueCrafterMode.AlreadyInit] run function true_crafter_mode:enemy/slime/init

#周囲に敵がいるなら
execute if entity @s[predicate=true_crafter_mode:in_hostile] run function true_crafter_mode:enemy/slime/moveset