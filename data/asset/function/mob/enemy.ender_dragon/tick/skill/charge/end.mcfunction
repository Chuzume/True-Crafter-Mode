#> asset:mob/enemy.ender_dragon/tick/skill/charge/end
#
# 攻撃解除、元の飛び方に戻る
#
# @within function asset:mob/enemy.ender_dragon/tick/skill/charge/

# キル
    kill @n[type=marker,tag=enemy.ender_dragon.Marker.Rotater]

# DragonPhase変更
    data modify entity @s DragonPhase set value 0
