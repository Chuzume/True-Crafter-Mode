#> asset:mob/enemy.vindicator/in_hostile/strong_walk/windup
#
# 
#
# @within function asset:mob/enemy.vindicator/in_hostile/

# サウンド
    playsound minecraft:entity.breeze.idle_ground hostile @a ~ ~ ~ 1 2
    
# パーティクル
    execute anchored eyes positioned ^ ^ ^ run particle minecraft:angry_villager ~ ~ ~ 0 0 0 0 1 force @a[distance=..32]
