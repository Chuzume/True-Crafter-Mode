#> asset:mob/1027.wither_minion/shot/step
#
# 
#
# @within function asset:mob/1027.wither_minion/shot/

# 速度を設定して飛ばす
    data modify storage lib: Argument.VectorMagnitude set value 0.5
    function lib:motion/
