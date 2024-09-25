#> asset:mob/1015.piglin_sword/in_hostile/heal/end
#
# 
#
# @within function asset:mob/1015.piglin_sword/in_hostile/heal/tick


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
    tag @s remove 1015.Using.Heal
    tag @s add 1015.HealUsed
    scoreboard players reset @s 1015.Tick
