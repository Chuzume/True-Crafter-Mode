
#スポーン時
execute if entity @s[tag=!T.HardAlreadyInit] run function t.hard:enemy/slime/init

#周囲に敵がいるなら
execute if entity @s[predicate=t.hard:battle_mode] run function t.hard:enemy/slime/moveset