#> asset:mob/1011.creeper/block_dig/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/1011/block_dig

# サウンド
    execute if score @s 3.Tick.Dig matches 20 run playsound minecraft:entity.creeper.primed hostile @a ~ ~ ~ 1 1

# 足を止める
    effect give @s slowness 1 10 true

# スコア加算
    scoreboard players add @s 3.Tick.Dig 1

# 爆発
    execute if score @s 3.Tick.Dig matches 50 at @s run function asset:mob/1011.creeper/in_hostile/explosion/

# 爆発が終わったあとに無敵を解除し、スコアリセット
    execute if score @s 3.Tick.Dig matches 51.. run function asset:mob/1011.creeper/in_hostile/explosion/end

# ステルス解除
    tag @s remove TMCM.Creeper.Stealth

# 実装フラグを立てる
    data modify storage asset:mob Implement set value true
