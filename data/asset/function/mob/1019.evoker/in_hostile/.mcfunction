#> asset:mob/1019.evoker/in_hostile/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/1019/in_hostile

# どういうわけかゴーレムを分解
#    execute as @e[type=iron_golem,distance=..5] at @s run function true_crafter_mode:entity/mob/evoker/destroy_golem

# ワープ
    execute if entity @p[distance=..5] unless predicate lib:is_passenger run scoreboard players add @s 1019.Tick 1
# 前後が塞がれていないならワープ実行
    execute if entity @s[scores={1019.Tick=60..}] facing entity @n[tag=TMCM.Target,distance=..16] eyes rotated ~ 0 run function asset:mob/1019.evoker/in_hostile/teleport/

# ヘルス半分での行動
    # 体力をスコア化
        execute store result score @s TMCM.Health run data get entity @s Health 1
    # スコア化された体力が半分以下で行動を起こす
        execute if entity @s[tag=!1019.SummonUsed,scores={TMCM.Health=..25}] run function asset:mob/1019.evoker/in_hostile/final_summon/start
    # Tick処理
        execute if entity @s[tag=1019.Using.Summon] run function asset:mob/1019.evoker/in_hostile/final_summon/tick

# 実装フラグを立てる
    data modify storage asset:mob Implement set value true
