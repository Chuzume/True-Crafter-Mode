#> asset:mob/enemy.spider/in_hostile/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/enemy.in_hostile

# スコア加算
    execute if entity @p[distance=..32,tag=!PlayerShouldInvulnerable] run scoreboard players add @s General.Mob.Tick 1

# ネット発射
    # 近距離
        execute if entity @s[scores={General.Mob.Tick=60..}] run function asset:mob/call.m {method:shoot}
