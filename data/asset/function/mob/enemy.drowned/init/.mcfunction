#> asset:mob/enemy.drowned/init/
#
# Mobのinit時の処理
#
# @within asset_manager:mob/triggers/init/init.m

# 帽子を被る
    item replace entity @s armor.head with minecraft:leather_helmet[dyed_color=7887164] 1

# ステータス
    attribute @s[nbt=!{IsBaby:1b}] minecraft:movement_speed base set 0.32
    attribute @s minecraft:step_height base set 1
