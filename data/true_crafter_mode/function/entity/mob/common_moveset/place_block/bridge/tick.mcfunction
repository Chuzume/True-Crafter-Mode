#> true_crafter_mode:entity/mob/common_moveset/place_block/bridge/tick
#
# 橋を置く
#
# @within function true_crafter_mode:entity/mob/common_moveset/place_block/check

# 足が速いと引っかかっちゃうので鈍足付与
    effect give @s slowness 1 1 true

# 水平方向に設置
    execute if block ^ ^-1 ^1 #true_crafter_mode:can_place if block ~ ~-2 ~ #true_crafter_mode:can_place positioned ^ ^-1 ^1 run function true_crafter_mode:entity/mob/common_moveset/place_block/place
    execute if block ^ ^-1 ^2 #true_crafter_mode:can_place if block ~ ~-2 ~ #true_crafter_mode:can_place positioned ^ ^-1 ^2 run function true_crafter_mode:entity/mob/common_moveset/place_block/place

# 足元が敵ブロックならスコアをリセット
    execute align xyz positioned ~0.5 ~-1 ~0.5 if entity @e[type=marker,tag=TMCM.Entity.EnemyBlock,distance=..1] run scoreboard players reset @s TMCM.Action.BridgeEnd

# 足元が敵ブロックじゃなくなってしばらく経ったらこのモードを解除
    execute align xyz positioned ~0.5 ~-1 ~0.5 unless entity @e[type=marker,tag=TMCM.Entity.EnemyBlock,distance=..1] run scoreboard players add @s TMCM.Action.BridgeEnd 1
    execute if score @s TMCM.Action.BridgeEnd matches 30.. run function true_crafter_mode:entity/mob/common_moveset/place_block/bridge/end
