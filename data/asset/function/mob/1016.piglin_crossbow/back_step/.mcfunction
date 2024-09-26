#> asset:mob/1016.piglin_crossbow/back_step/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/1016/back_step

# サウンド
    playsound entity.piglin.jealous hostile @a ~ ~ ~ 1 1.5

# super
    function asset:mob/super.method

# 実装フラグを立てる
    data modify storage asset:mob Implement set value true
