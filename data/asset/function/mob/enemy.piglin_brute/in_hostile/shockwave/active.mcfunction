#> asset:mob/enemy.piglin_brute/in_hostile/shockwave/active
#
# ショックウェ～ブ！
#
# @within function asset:mob/enemy.piglin_brute/in_hostile/

# 移動をストップ
    effect give @s slowness 2 10 true

# 叩きつけを眼の前に放つ
    execute rotated ~ 0 positioned ^ ^ ^2 run function asset:mob/enemy.piglin_brute/in_hostile/shockwave/melee/

# ショックウェ～ブ！
    execute store result storage api: Argument.FieldOverride.OwnerID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Shockwave
    execute facing entity @n[tag=TMCM.Target,distance=..32] eyes rotated ~ 0 run function api:object/summon.m {ID:"projectile.brute_shockwave"}
