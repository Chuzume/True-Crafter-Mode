#> asset:mob/1025.wither/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/1025/init

# データ設定
#    data modify entity @s NoAI set value true

# 召喚して乗る
    summon armor_stand ~ ~ ~ {Marker:1b,Tags:["Test","AutoKillWhenDiePassenger","AllowProcessingCommonTag"]}
    ride @s mount @n[type=armor_stand]
