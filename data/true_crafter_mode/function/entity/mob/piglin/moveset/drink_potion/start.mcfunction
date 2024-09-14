#> true_crafter_mode:entity/mob/piglin/moveset/drink_potion/start
#
# 耐火のポーションを飲む
#
# @within function true_crafter_mode:entity/mob/piglin/tick

# タグ付与
    tag @s add TMCM.Piglin.FireResist

# 現在の手持ちをストレージに移す
    function #oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item.Mainhand set from entity @s HandItems[0]

# アイテムを持つ
    item replace entity @s weapon.mainhand with potion[potion_contents={potion:"minecraft:fire_resistance"}]

# 足を止める
    effect give @s slowness 2 1 true

#近くにプレイヤーがいるなら飛び退く
    execute if entity @a[distance=..7] run playsound minecraft:entity.piglin.jealous hostile @a ~ ~ ~ 1 1.5
    execute if entity @a[distance=..7] facing entity @p eyes rotated ~ 0 unless block ^ ^-1 ^-3 #true_crafter_mode:no_collision if block ^ ^ ^-1 #true_crafter_mode:no_collision run function true_crafter_mode:entity/mob/common_moveset/back_step