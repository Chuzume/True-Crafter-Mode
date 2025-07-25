#> asset:mob/abstract.chaser_ai/tick/search/tick
#
# 
#
# @within function asset:mob/abstract.chaser_ai/tick/

# パーティクル
    execute anchored eyes positioned ^ ^ ^ run particle dust{color:[0.5,0.0,0.5],scale:1.0} ~ ~ ~ 0.2 0.2 0.2 0 1 force @a[distance=..32]

# 立ち往生したらブロック設置
#    function asset:mob/abstract.chaser_ai/tick/place_block/

# ブロック破壊処理
    # プレイヤーが近くにいて、その方向にブロックがある状態が長く続いた場合、ブロック破壊モードに移行する
        execute unless score @s abstract.chaser_ai.Dig matches 20.. if entity @p[distance=..32] facing entity @p eyes rotated ~ 0 unless block ^ ^ ^1 #lib:no_dig run scoreboard players add @s abstract.chaser_ai.Dig 1 
    # 条件を満たしていない場合はスコアが減る
        execute facing entity @p eyes rotated ~ 0 if block ^ ^ ^1 #lib:no_dig run scoreboard players reset @s abstract.chaser_ai.Dig
    # 採掘カウント20tickでブロック破壊メソッドを開始する
        execute if score @s abstract.chaser_ai.Dig matches 20.. run function asset:mob/call.m {method:block_dig}

# やること終わったら解除
    execute if entity @s[predicate=lib:in_hostile] run function asset:mob/abstract.chaser_ai/tick/search/end
    execute unless entity @p[tag=!PlayerShouldInvulnerable,distance=..64] run function asset:mob/abstract.chaser_ai/tick/search/end
