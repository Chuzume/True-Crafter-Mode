#> asset:mob/1025.wither/tick/base_move
#
# 基本的な動作
#
# @within function asset:mob/1025.wither/tick/in_hostile

# 移動
    # 接近
        execute on vehicle facing entity @n[tag=TMCM.Target,distance=8..64] feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-80 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ^ ^ ^0.2 ~ ~
    # 距離キープ
        execute on vehicle facing entity @n[tag=TMCM.Target,distance=..8] feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-80 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ^ ^ ^-0.05 ~ ~

# 本体の向き変更
    execute facing entity @n[tag=TMCM.Target,distance=..64] feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-40 facing entity @s feet positioned as @s rotated ~ ~ run rotate @s ~ ~
