#> true_crafter_mode:entity/mob/enderman/tick
#
# エンダーマンのTick処理
#
# @within function true_crafter_mode:tick

# Init
    execute if entity @s[tag=!TMCM.AlreadyInit] run function true_crafter_mode:entity/mob/enderman/init

# 接近すると勝手に敵対化する
    # かぼちゃ被って無い時
        execute if entity @a[tag=!TMCM.Exception,distance=..16] run data modify entity @s AngryAt set from entity @p[nbt=!{Inventory:[{Slot:103b,id:"minecraft:carved_pumpkin"}]},distance=..16] UUID
    # かぼちゃ被ってる時
        execute if entity @a[tag=!TMCM.Exception,distance=..16] run data modify entity @s AngryAt set from entity @p[nbt={Inventory:[{Slot:103b,id:"minecraft:carved_pumpkin"}]},distance=..4] UUID

# 敵対時の処理
    execute if predicate true_crafter_mode:in_hostile run function true_crafter_mode:entity/mob/enderman/moveset

# 敵対していない場合はスコアリセット
    execute unless predicate true_crafter_mode:in_hostile run scoreboard players reset @s TMCM.Tick