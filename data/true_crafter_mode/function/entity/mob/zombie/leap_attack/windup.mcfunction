#> true_crafter_mode:entity/mob/zombie/leap_attack/windup
#
# 攻撃前の警告
#
# @within function true_crafter_mode:entity/mob/zombie/moveset

# サウンド
    playsound minecraft:entity.breeze.idle_ground hostile @a ~ ~ ~ 1 2

# パーティクル
    execute anchored eyes positioned ^ ^ ^ run particle minecraft:angry_villager ~ ~ ~ 0 0 0 0 1 force @a[distance=..32]