#> asset:mob/1008.bogged/equip_helmet/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/1008/equip_helmet

# 帽子を被る
    item replace entity @s armor.head with minecraft:leather_helmet[dyed_color=3887645] 1

# 実装フラグを立てる
    data modify storage asset:mob Implement set value true
