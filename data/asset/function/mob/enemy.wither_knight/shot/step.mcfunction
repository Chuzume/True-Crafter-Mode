#> asset:mob/enemy.wither_knight/shot/step
#
# 
#
# @within function asset:mob/enemy.wither_knight/shot/

# 速度を設定して飛ばす
    data modify storage lib: Argument.VectorMagnitude set value 0.5
    function lib:motion/
