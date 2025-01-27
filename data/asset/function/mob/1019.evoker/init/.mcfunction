#> asset:mob/1019.evoker/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/1019/init

# ステータス
    attribute @s minecraft:step_height base set 1
    attribute @s knockback_resistance base set 1

# 体力
    attribute @s max_health base set 50
    effect give @s instant_health 1 100 true
