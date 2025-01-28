#> asset:mob/1001.zombie/in_hostile/windup
#
# 
#
# @within function asset:mob/1001.zombie/in_hostile/

# サウンド
    playsound minecraft:entity.breeze.idle_ground hostile @a ~ ~ ~ 1 2

# 移動速度低下
    effect give @s slowness 2 1 true

# パーティクル
    execute anchored eyes positioned ^ ^ ^ run particle minecraft:angry_villager ~ ~ ~ 0 0 0 0 1 force @a[distance=..32]
