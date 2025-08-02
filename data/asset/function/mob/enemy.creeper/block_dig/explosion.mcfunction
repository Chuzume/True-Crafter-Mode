#> asset:mob/enemy.creeper/block_dig/explosion
#
# 大爆発！
#
# @within function asset:mob/enemy.creeper/block_dig/

# サウンド
    execute if score @s abstract.chaser_ai.Dig matches 20 run playsound minecraft:entity.creeper.primed hostile @a ~ ~ ~ 1 1

# 足を止める
    effect give @s slowness 1 10 true

# スコア加算
    scoreboard players add @s abstract.chaser_ai.Dig 1

# 爆発
    execute if score @s abstract.chaser_ai.Dig matches 50 at @s run function asset:mob/enemy.creeper/in_hostile/explosion/

# 爆発が終わったあとに無敵を解除し、スコアリセット
    execute if score @s abstract.chaser_ai.Dig matches 51.. run function asset:mob/enemy.creeper/in_hostile/explosion/end

# ステルス解除
    tag @s remove TMCM.Creeper.Stealth
