#> asset:mob/1012.enderman/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/1012/tick

# 接近すると勝手に敵対化する
    # かぼちゃ被って無い時
        execute if entity @a[tag=!TMCM.Exception,distance=..16] run data modify entity @s AngryAt set from entity @p[nbt=!{Inventory:[{Slot:103b,id:"minecraft:carved_pumpkin"}]},distance=..16] UUID
    # かぼちゃ被ってる時
        execute if entity @a[tag=!TMCM.Exception,distance=..4] run data modify entity @s AngryAt set from entity @p[nbt={Inventory:[{Slot:103b,id:"minecraft:carved_pumpkin"}]},distance=..4] UUID

# Super
    function asset:mob/super.tick
