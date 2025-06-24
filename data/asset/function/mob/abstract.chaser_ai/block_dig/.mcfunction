#> asset:mob/abstract_chaser_ai/block_dig/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/3/block_dig

# スコア加算
    scoreboard players add @s 3.Tick.Dig 1

# 足を止める
    effect give @s slowness 1 10 true

# 向き調整処理、ただしBrain持ちがやるとやかましいのでやらない
    execute unless entity @s[type=#true_crafter_mode:has_brain] run function asset:mob/abstract_chaser_ai/block_dig/facing

# サウンド
    execute if score @s 3.Tick.Dig matches 20 run playsound minecraft:entity.zombie.attack_wooden_door hostile @a ~ ~ ~ 1 2
    execute if score @s 3.Tick.Dig matches 25 run playsound minecraft:entity.zombie.attack_wooden_door hostile @a ~ ~ ~ 1 2
    execute if score @s 3.Tick.Dig matches 30 run playsound minecraft:entity.zombie.attack_wooden_door hostile @a ~ ~ ~ 1 2
    execute if score @s 3.Tick.Dig matches 35 run playsound minecraft:entity.zombie.attack_wooden_door hostile @a ~ ~ ~ 1 2

# 破壊
    execute if score @s 3.Tick.Dig matches 40 at @s run function asset:mob/abstract_chaser_ai/block_dig/break
