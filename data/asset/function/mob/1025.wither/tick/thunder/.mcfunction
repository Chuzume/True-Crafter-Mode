#> asset:mob/1025.wither/tick/thunder/
#
# 接近されたらウィザーヘッド射出をコレに変更
#
# @within function asset:mob/1025.wither/tick/in_hostile

# 自身にタグを付与
    tag @s add This

# 矢を変換
    execute as @n[type=wither_skull,distance=..8] on origin if entity @s[tag=This] run function asset:mob/1025.wither/tick/thunder/summon

# リセット
    tag @s remove This
