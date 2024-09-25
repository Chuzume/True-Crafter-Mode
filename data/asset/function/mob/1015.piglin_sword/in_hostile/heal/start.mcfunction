#> asset:mob/1015.piglin_sword/in_hostile/heal/start
#
# 
#
# @within function asset:mob/1015.piglin_sword/in_hostile/

# タグ付与
    tag @s add 1015.Using.Heal

# 現在の手持ちをストレージに移す
    function #oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item.Mainhand set from entity @s HandItems[0]

# アイテムを持つ
    item replace entity @s weapon.mainhand with cooked_porkchop

# 足を止める
    effect give @s slowness 2 1 true
