#> asset:mob/enemy.piglin_brute/in_hostile/shockwave/melee/
#
# 叩きつけ攻撃
#
# @within function asset:mob/enemy.piglin_brute/in_hostile/shockwave/active

# 範囲ダメージ
    function asset:mob/enemy.piglin_brute/in_hostile/shockwave/melee/damage.m with storage asset:context this.Damage
# 演出
    particle dust_pillar{block_state:"minecraft:stone"} ~ ~0.5 ~ 1.5 0 1.5 0.5 100 normal
    particle crit ~ ~ ~ 2 0.5 2 0.5 50 normal
    particle minecraft:explosion ~ ~ ~ 2 0 2 0.5 5 force @a[distance=..32]
    playsound minecraft:item.mace.smash_ground hostile @a ~ ~ ~ 1.5 1.5
    playsound minecraft:entity.player.attack.knockback hostile @a ~ ~ ~ 1.5 0.5
