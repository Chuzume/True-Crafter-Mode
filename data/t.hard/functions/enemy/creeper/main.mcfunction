#スポーン時
execute if entity @s[tag=!T.Hard_Already] run function t.hard:enemy/creeper/spawn
#攻撃行動（真クラ仕様）
execute unless score #t.hard_Gamerule T.Hard_Gamerule4 matches 2 if entity @a[tag=!T.Hard_Exception,distance=..30] run function t.hard:enemy/creeper/attack
#攻撃行動（バニラ寄り）
execute if score #t.hard_Gamerule T.Hard_Gamerule4 matches 2 if entity @a[tag=!T.Hard_Exception,distance=..30] run function t.hard:enemy/creeper/attack_vanilla