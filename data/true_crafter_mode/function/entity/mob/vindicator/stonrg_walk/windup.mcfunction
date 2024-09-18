#> true_crafter_mode:entity/mob/vindicator/stonrg_walk/windup
#
# 予備動作
#
# @within function true_crafter_mode:entity/mob/vindicator/moveset

# サウンド
    playsound minecraft:entity.breeze.idle_ground hostile @a ~ ~ ~ 1 2
    
# パーティクル
    execute anchored eyes positioned ^ ^ ^ run particle minecraft:angry_villager ~ ~ ~ 0 0 0 0 1 force @a[distance=..32]