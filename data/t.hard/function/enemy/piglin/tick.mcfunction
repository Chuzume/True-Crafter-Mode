
# スポーン時
    execute if entity @s[tag=!t.hardAlreadyInit] run function t.hard:enemy/piglin/init

# 周囲に敵がいるなら
    execute if entity @s[nbt=!{IsBaby:1b}] if entity @e[type=#t.hard:piglin_enemy,tag=!t.hardException,distance=..30] run function t.hard:enemy/piglin/moveset