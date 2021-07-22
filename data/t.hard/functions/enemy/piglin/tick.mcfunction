
# スポーン時
    execute if entity @s[tag=!T.HardAlreadyInit] run function t.hard:enemy/piglin/init

# 周囲に敵がいるなら
    execute if entity @s[nbt=!{IsBaby:1b}] if entity @e[type=#t.hard:piglin_enemy,tag=!T.HardException,distance=..30] run function t.hard:enemy/piglin/moveset