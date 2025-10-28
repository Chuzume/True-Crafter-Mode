#> asset:mob/enemy.evoker/in_hostile/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/enemy.in_hostile

# ワープ
    execute if entity @p[distance=..5] unless predicate lib:is_passenger run scoreboard players add @s General.Mob.Tick 1
# 前後が塞がれていないならワープ実行
    execute if entity @s[scores={General.Mob.Tick=40..}] facing entity @n[tag=TMCM.Target,distance=..16] eyes rotated ~ 0 run function asset:mob/enemy.evoker/in_hostile/teleport/

# ヘルス半分での行動
    # 体力をスコア化
        execute store result score @s enemy.evoker.Health run data get entity @s Health 1
    # スコア化された体力が半分以下で行動を起こす
        execute if entity @s[tag=!enemy.evoker.SummonUsed,scores={enemy.evoker.Health=..25}] run function asset:mob/enemy.evoker/in_hostile/final_summon/start
    # Tick処理
        execute if entity @s[tag=enemy.evoker.Using.Summon] run function asset:mob/enemy.evoker/in_hostile/final_summon/tick
