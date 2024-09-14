#> true_crafter_mode:entity/mob/piglin/moveset/heal/start
#
# 回復開始
#
# @within function true_crafter_mode:entity/mob/piglin/moveset/

# 現在の手持ちをストレージに移す
    function #oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item.Mainhand set from entity @s HandItems[0]

# むしゃむしゃ
    tag @s add TMCM.Piglin.Heal
    item replace entity @s weapon.mainhand with cooked_porkchop
    effect give @s slowness 2 1 true
