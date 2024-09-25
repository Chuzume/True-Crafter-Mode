#> asset:mob/1015.piglin_sword/tick/fire_resist/end
#
# 
#
# @within function asset:mob/1015.piglin_sword/tick/fire_resist/tick


# バフ付与
    effect give @s fire_resistance 120 0

# 手持ちのポーション消す
    item replace entity @s weapon.mainhand with air

# ストレージから手持ちを回収
    data modify entity @s HandItems[0] set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item.Mainhand

# 演出
    playsound entity.player.burp hostile @a ~ ~ ~ 1 1

# リセット
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item
    scoreboard players reset @s 1015.Tick 
    tag @s remove 1015.Using.FireResist