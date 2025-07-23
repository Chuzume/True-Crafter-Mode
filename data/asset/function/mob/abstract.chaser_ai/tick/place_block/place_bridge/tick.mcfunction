#> asset:mob/abstract.chaser_ai/tick/place_block/place_bridge/tick
#
# 
#
# @within function asset:mob/abstract.chaser_ai/tick/place_block/

# 足が速いと引っかかっちゃうので鈍足付与
    effect give @s slowness 1 1 true

# 水平方向に設置
    execute if block ^ ^-1 ^1 #true_crafter_mode:can_place if block ~ ~-2 ~ #true_crafter_mode:can_place positioned ^ ^-1 ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run function api:object/summon.m {ID:"gimmick.enemy_block"}
    execute if block ^ ^-1 ^2 #true_crafter_mode:can_place if block ~ ~-2 ~ #true_crafter_mode:can_place positioned ^ ^-1 ^2 align xyz positioned ~0.5 ~0.5 ~0.5 run function api:object/summon.m {ID:"gimmick.enemy_block"}

# 足元が敵ブロックなら、終了のためのスコアをリセット
    execute align xyz positioned ~0.5 ~-1 ~0.5 if entity @e[type=marker,tag=Object.gimmick.enemy_block,distance=..1] run scoreboard players reset @s abstract.chaser_ai.TillBridgeEnd

# 足元が敵ブロックじゃなくなってしばらく経ったらこのモードを解除
    execute align xyz positioned ~0.5 ~-1 ~0.5 unless entity @e[type=marker,tag=Object.gimmick.enemy_block,distance=..1] run scoreboard players add @s abstract.chaser_ai.TillBridgeEnd 1
    execute if score @s abstract.chaser_ai.TillBridgeEnd matches 30.. run function asset:mob/abstract.chaser_ai/tick/place_block/place_bridge/end
