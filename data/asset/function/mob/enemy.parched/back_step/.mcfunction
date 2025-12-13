#> asset:mob/enemy.parched/back_step/
#
# 継承先などから実行される処理
#
# @within asset_manager:mob/triggers/call_method/run_method.m

# サウンド
    playsound entity.parched.ambient hostile @a ~ ~ ~ 1 2

# super
    function asset:mob/super.method
