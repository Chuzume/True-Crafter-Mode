#> asset:mob/1006.skeleton/back_step/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/1006/back_step

# 演出
    playsound entity.skeleton.death hostile @a ~ ~ ~ 1 1.5
    
# スーパーメソッド実行
    function asset:mob/super.method

# 実装フラグを立てる
    data modify storage asset:mob Implement set value true
