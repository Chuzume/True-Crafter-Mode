#> asset:mob/1007.stray/back_step/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/1007/back_step

# サウンド
    playsound entity.stray.death hostile @a ~ ~ ~ 1 2

# super
    function asset:mob/super.method

# 実装フラグを立てる
    data modify storage asset:mob Implement set value true
