#> asset:mob/enemy.piglin_brute/in_hostile/
#
# 継承先などから実行される処理
#
# @within asset_manager:mob/triggers/call_method/run_method.m

# 叩きつけ
    # 付近にプレイヤーがいたらスコア加算
        execute unless score @s General.Mob.Tick matches 40.. if entity @n[tag=TMCM.Target,distance=..16] run scoreboard players add @s General.Mob.Tick 1
    # 途中で予備動作を行い、スコアが止まらなくなる
        execute if score @s General.Mob.Tick matches 40 run function asset:mob/enemy.piglin_brute/in_hostile/shockwave/windup
        execute if score @s General.Mob.Tick matches 40.. run scoreboard players add @s General.Mob.Tick 1
    # 実行
        execute if entity @s[scores={General.Mob.Tick=80}] rotated ~ 0 run function asset:mob/enemy.piglin_brute/in_hostile/shockwave/active
    # しばらくするとリセット
        execute if score @s General.Mob.Tick matches 120.. run scoreboard players reset @s General.Mob.Tick
