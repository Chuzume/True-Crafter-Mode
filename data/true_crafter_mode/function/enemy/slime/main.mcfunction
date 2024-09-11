
#スポーン時
execute if entity @s[tag=!T.HardAlreadyInit] run function true_crafter_mode:enemy/slime/init

#周囲に敵がいるなら
execute if entity @s[predicate=true_crafter_mode:battle_mode] run function true_crafter_mode:enemy/slime/moveset