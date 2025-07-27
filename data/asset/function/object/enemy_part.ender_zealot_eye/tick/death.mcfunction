#> asset:object/enemy_part.ender_zealot_eye/tick/death
#
# 死亡時処理
#
# @within function asset:object/enemy_part.ender_zealot_eye/tick/

# 最寄りのエンダードラゴンにダメージを与える
    damage @n[type=ender_dragon,distance=..128] 15 minecraft:generic by @p[distance=..128]

# 消える
    kill @s
