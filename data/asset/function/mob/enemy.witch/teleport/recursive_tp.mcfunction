#> asset:mob/enemy.witch/teleport/recursive_tp
#
# 
#
# @within function 
#   asset:mob/enemy.witch/teleport/
#   asset:mob/enemy.witch/teleport/recursive_tp

# 移動
    # 眼の前のブロックが判定アリならそこに移動
        execute unless block ^ ^ ^1 #lib:no_collision_safe align xyz run tp @s ~0.5 ~ ~0.5
    # 目の前に何も無く、実行座標が自身から離れてなかったらポジションずらして再帰
        execute positioned ^ ^ ^1 if block ~ ~ ~ #lib:no_collision_safe if entity @s[distance=..5] run function asset:mob/enemy.witch/teleport/recursive_tp
    # 距離限界だったらそこに移動
        execute positioned ^ ^ ^1 if block ~ ~ ~ #lib:no_collision_safe unless entity @s[distance=..5] align xyz run tp @s ~0.5 ~ ~0.5
