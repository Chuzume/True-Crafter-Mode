#> asset:mob/1015.piglin_sword/tick/fire_resist/start
#
# 
#
# @within function asset:mob/1015.piglin_sword/tick/

# タグ付与
    tag @s add 1015.Using.FireResist

# 自身の敵対者にタグ付与
    execute on target run tag @s add TMCM.Target

# 現在の手持ちをストレージに移す
    function #oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item.Mainhand set from entity @s HandItems[0]

# アイテムを持つ
    item replace entity @s weapon.mainhand with potion[potion_contents={potion:"minecraft:fire_resistance"}]

# 足を止める
    effect give @s slowness 2 1 true

#近くに敵がいるなら飛び退く
    execute if entity @n[tag=TMCM.Target,distance=..7] run function asset:mob/1015.piglin_sword/tick/back_step

# ターゲットからタグを外す
    tag @n[tag=TMCM.Target] remove TMCM.Target
