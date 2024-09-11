
# スポーン時
    execute if entity @s[tag=!T.HardAlreadyInit] run function true_crafter_mode:enemy/piglin/init

# 周囲に敵がいるなら
    execute if entity @s[nbt=!{IsBaby:1b}] if entity @e[type=#true_crafter_mode:piglin_enemy,tag=!T.HardException,distance=..30] run function true_crafter_mode:enemy/piglin/moveset