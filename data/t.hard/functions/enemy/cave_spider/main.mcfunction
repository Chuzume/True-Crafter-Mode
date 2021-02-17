
#スポーン時
execute if entity @s[tag=!T.Hard_AlreadyInit] run function t.hard:enemy/cave_spider/init

#周囲に敵がいるなら
execute if entity @s[predicate=t.hard:battle_mode] run function t.hard:enemy/cave_spider/moveset