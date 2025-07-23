#> asset:mob/abstract.chaser_ai/tick/place_block/jump
#
# 
#
# @within function asset:mob/abstract.chaser_ai/tick/place_block/place

# 上昇する
    tp @s ~ ~1 ~

# この動作のクールタイムを設定
    scoreboard players set @s abstract.chaser_ai.PlaceCoolTime 5
