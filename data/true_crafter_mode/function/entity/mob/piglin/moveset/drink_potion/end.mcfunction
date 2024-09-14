#> true_crafter_mode:entity/mob/piglin/moveset/drink_potion/end
#
# 飲み終わり
#
# @within function true_crafter_mode:entity/mob/piglin/moveset/drink_potion/tick

# 手持ちのポーション消す
    item replace entity @s weapon.mainhand with air

# ストレージから手持ちを回収
    data modify entity @s HandItems[0] set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item.Mainhand

# 演出
    playsound entity.player.burp hostile @a ~ ~ ~ 1 1

# リセット
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item
    scoreboard players reset @s TMCM.SubAction 
    tag @s remove TMCM.Piglin.FireResist
