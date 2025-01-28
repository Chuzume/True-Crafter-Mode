#> asset:mob/1023.zombie_brute/in_hostile/windup
#
# 
#
# @within function asset:mob/1023.zombie_brute/in_hostile/

# サウンド
    playsound minecraft:entity.breeze.idle_ground hostile @a ~ ~ ~ 1 2

# 移動速度低下
    effect give @s slowness 1 10 true

# パーティクル
    execute anchored eyes positioned ^ ^ ^ run particle minecraft:angry_villager ~ ~ ~ 0 0 0 0 1 force @a[distance=..32]
