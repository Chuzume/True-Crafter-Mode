#> asset:mob/enemy.piglin_brute/reset/
#
# 継承先などから実行される処理
#
# @within asset_manager:mob/triggers/call_method/run_method.m

# スコアリセット、ただしその辺に敵がいないなら
    execute unless entity @n[type=#lib:enemy_of_piglin,tag=!PlayerShouldInvulnerable,distance=..16] run scoreboard players reset @s General.Mob.Tick
