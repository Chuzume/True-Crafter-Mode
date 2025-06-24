#> asset:mob/enemy.skeleton/back_step/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/enemy.back_step

# 演出
    playsound entity.skeleton.death hostile @a ~ ~ ~ 1 1.5
    
# スーパーメソッド実行
    function asset:mob/super.method
