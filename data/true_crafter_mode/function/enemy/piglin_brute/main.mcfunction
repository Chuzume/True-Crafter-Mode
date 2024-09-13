#スポーン時
execute if entity @s[tag=!TMCM.AlreadyInit] run function true_crafter_mode:enemy/piglin_brute/spawn
#周囲に敵がいるなら
execute if entity @e[type=#true_crafter_mode:piglin_enemy,tag=!TMCM.Exception,distance=..30] run function true_crafter_mode:enemy/piglin_brute/attack