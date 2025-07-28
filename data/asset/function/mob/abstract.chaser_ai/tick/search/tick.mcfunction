#> asset:mob/abstract.chaser_ai/tick/search/tick
#
# 
#
# @within function asset:mob/abstract.chaser_ai/tick/

# パーティクル
    execute anchored eyes positioned ^ ^ ^ run particle dust{color:[0.5,0.0,0.5],scale:1.0} ~ ~ ~ 0.2 0.2 0.2 0 1 force @a[distance=..32]

# ブロック破壊処理
    # プレイヤーが近くにいて、その方向にブロックがある状態が長く続いた場合、ブロック破壊モードに移行する
        execute unless score @s abstract.chaser_ai.Dig matches 20.. if entity @p[distance=..32] anchored eyes positioned ^ ^ ^ facing entity @p eyes unless block ^ ^ ^1 #lib:no_dig run scoreboard players add @s abstract.chaser_ai.Dig 1 
    # プレイヤーが足元の箱型の判定に収まっている状態が長く続いた場合も、ブロック破壊モードに移行する
        execute unless score @s abstract.chaser_ai.Dig matches 20.. if entity @p[tag=!PlayerShouldInvulnerable,distance=..64] positioned ~-8 ~-34 ~-8 if entity @p[tag=!PlayerShouldInvulnerable,dx=16,dy=32,dz=16] unless block ~ ~-1 ~ #lib:no_dig run scoreboard players add @s abstract.chaser_ai.Dig 1 
    # 条件を満たしていない場合はスコアが減る
        execute if entity @p[tag=!PlayerShouldInvulnerable,distance=..64] anchored eyes positioned ^ ^ ^ facing entity @p[distance=..32] eyes if block ^ ^ ^1 #lib:no_dig at @s positioned ~-8 ~-34 ~-8 unless entity @p[tag=!PlayerShouldInvulnerable,dx=16,dy=32,dz=16] run scoreboard players reset @s abstract.chaser_ai.Dig
    # 採掘カウント20tickでブロック破壊メソッドを開始する
        execute if score @s abstract.chaser_ai.Dig matches 20.. run function asset:mob/call.m {method:block_dig}

# やること終わったら解除
    execute if entity @s[predicate=lib:in_hostile] run function asset:mob/abstract.chaser_ai/tick/search/end
    execute unless entity @p[tag=!PlayerShouldInvulnerable,distance=..64] run function asset:mob/abstract.chaser_ai/tick/search/end
