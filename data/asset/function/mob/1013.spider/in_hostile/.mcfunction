#> asset:mob/1013.spider/in_hostile/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/1013/in_hostile

# スコア加算
    execute if entity @p[distance=..32,tag=!TMCM.Exception] run scoreboard players add @s 1013.Tick 1

# ネット発射
    # 近距離
        execute if entity @s[scores={1013.Tick=40..}] run function asset:mob/call.m {method:shoot}

# 実装フラグを立てる
    data modify storage asset:mob Implement set value true
