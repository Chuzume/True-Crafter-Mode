#> true_crafter_mode:entity/mob/common_moveset/custom_ai/search_player/tick
#
# 
#
# @within function true_crafter_mode:entity/mob/zombie/tick

# パーティクル
    execute at @s anchored eyes positioned ^ ^ ^ run particle dust{color:[0.5,0.0,0.5],scale:1} ~ ~0.5 ~ 0 0 0 0 1 force @a[distance=..32]

# 敵対してなければプレイヤーを探す
    execute unless data entity @s Brain.memories."minecraft:angry_at" run data modify entity @s Brain.memories."minecraft:angry_at".value set from entity @p UUID
