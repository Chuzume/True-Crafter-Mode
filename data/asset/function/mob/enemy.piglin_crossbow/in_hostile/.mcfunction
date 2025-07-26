#> asset:mob/enemy.piglin_crossbow/in_hostile/
#
# 継承先などから実行される処理
#
# @within asset_manager:mob/triggers/call_method/run_method.m

# 接近されすぎるとバックステップ
    execute if entity @n[tag=TMCM.Target,distance=..4] run scoreboard players add @s General.Mob.Tick 1
    execute if score @s General.Mob.Tick matches 30.. facing entity @n[tag=TMCM.Target] eyes rotated ~ 0 unless block ^ ^-1 ^-3 #lib:no_collision if block ^ ^ ^-1 #lib:no_collision run function asset:mob/enemy.piglin_crossbow/in_hostile/back_step

# 距離を離しているならスコアをリセット
    execute unless entity @n[tag=TMCM.Target,distance=..4] run scoreboard players reset @s General.Mob.Tick

# super
    function asset:mob/super.method
