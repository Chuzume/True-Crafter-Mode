#> asset:mob/1023.zombie_brute/area_damage/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/1023/area_damage

# 私が実行者です！
    tag @s add This

# 範囲ダメージ
    execute as @a[distance=..4] run damage @s 7 minecraft:mob_attack by @n[type=zombie,tag=This,distance=..4]

# 壁を壊す
    function asset:mob/1023.zombie_brute/area_damage/break

# 演出
    particle dust_pillar{block_state:"minecraft:stone"} ~ ~0.5 ~ 1.5 0 1.5 0.5 100 normal
    particle crit ~ ~ ~ 2 0.5 2 0.5 50 normal
    particle minecraft:explosion ~ ~ ~ 2 0 2 0.5 5 force @a[distance=..32]
    playsound minecraft:item.mace.smash_ground hostile @a ~ ~ ~ 1.5 1.5
    playsound minecraft:entity.player.attack.knockback hostile @a ~ ~ ~ 1.5 0.5

# リセット
    tag @s remove This
