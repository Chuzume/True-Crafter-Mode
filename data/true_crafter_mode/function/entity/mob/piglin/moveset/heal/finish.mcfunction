#> true_crafter_mode:entity/mob/piglin/moveset/heal/finish
#
# 回復終了
#
# @within function true_crafter_mode:entity/mob/piglin/moveset/heal/tick

# バフ付与
    effect give @s instant_health 1 2

# 手持ちのポーション消す
    item replace entity @s weapon.mainhand with air

# ストレージから手持ちを回収
    data modify entity @s HandItems[0] set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item.Mainhand

# 演出
    playsound entity.player.burp hostile @a ~ ~ ~ 1 1
    particle minecraft:happy_villager ~ ~1 ~ 0.25 0.5 0.25 0 10

# リセット
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item
    tag @s remove TMCM.Piglin.Heal
    tag @s add TMCM.Piglin.CannotHeal
    scoreboard players reset @s TMCM.SubAction 
