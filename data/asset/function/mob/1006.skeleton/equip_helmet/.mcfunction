#> asset:mob/1006.skeleton/equip_helmet/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/1006/equip_helmet

# 帽子を被る
    item replace entity @s[type=skeleton,tag=!TMCM.AlreadyInit,scores={Armor_Check=0}] armor.head with minecraft:leather_helmet[dyed_color=11250603] 1
