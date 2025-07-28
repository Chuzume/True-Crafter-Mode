#> asset:mob/enemy.piglin_brute/in_hostile/shockwave/melee/damage.m
#
# 近接攻撃のダメージ フィールド値から取得する都合でマクロ
#
# @within function asset:mob/enemy.piglin_brute/in_hostile/shockwave/melee/

# 私が実行者です
    tag @s add This

# ダメージ
    $execute as @a[distance=..2] run damage @s $(ShockwaveMelee) mob_attack by @n[type=piglin_brute,tag=This,distance=..16]

# リセット
    tag @s remove This
