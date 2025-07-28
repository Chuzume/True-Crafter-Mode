#> asset:object/projectile.brute_shockwave/tick/explosion.m
#
# 
#
# @within function asset:object/projectile.brute_shockwave/tick/

# ダメージ
    $execute positioned ~-0.75 ~ ~-0.75 as @a[tag=!PlayerShouldInvulnerable,distance=..8,dx=1.5,dy=2,dz=1.5] at @s run damage @s $(Damage) minecraft:mob_projectile by @n[scores={MobUUID=$(OwnerID)}]

# パーティクル
    particle entity_effect{color:[1.000,0.5,0.0,1.00]} ~ ~0.5 ~ 0.3 1 0.3 0.0 35 force @a[distance=..32]
    particle dust{color:[1.0,0.5,0.0],scale:1} ~ ~0.5 ~ 0.3 1 0.3 0.0 35 force @a[distance=..32]
    particle minecraft:explosion ~ ~ ~ 0 0 0 1 1 force @a[distance=..64]
    particle minecraft:explosion ~ ~1.5 ~ 0 0 0 1 1 force @a[distance=..64]
    particle minecraft:flame ~ ~ ~ 0.0 1 0.0 0.17 0
    particle minecraft:flame ~0.3 ~0.1 ~-0.1 0.0 1 0.0 0.15 0
    particle minecraft:flame ~-0.5 ~0.2 ~0.2 0.0 1 0.0 0.23 0
    particle minecraft:flame ~0.4 ~0.3 ~-0.7 0.0 1 0.0 0.3 0
    particle minecraft:flame ~0.7 ~0.4 ~0.5 0.0 1 0.0 0.2 0
    particle minecraft:flame ~-0.3 ~0.5 ~ 0.0 1 0.0 0.27 0
    particle minecraft:flame ~-0.7 ~0.6 ~-0.1 0.0 1 0.0 0.3 0
    particle minecraft:flame ~0.3 ~0.7 ~0.2 0.0 1 0.0 0.25 0

# サウンド
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 2
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1 1
