#> t.hard_score_damage:core/get_default_epf
#
# プロテクションのEPFを取得します
#
# @within function t.hard_score_damage:core/get_status

#> Temp
# @private
    #declare score_holder $Temp

# 負荷軽減のためstorageに入れる
    data modify storage t.hard_score_damage: Protection set value []
    data modify storage t.hard_score_damage: Protection append from entity @s ArmorItems[].tag.Enchantments[{id:"minecraft:protection"}].lvl
# 明示的に0に設定
    scoreboard players set $EPF ScoreDamageCore 0
# 足
    execute store result score $Temp ScoreDamageCore run data get storage t.hard_score_damage: Protection[0]
    scoreboard players operation $EPF ScoreDamageCore += $Temp ScoreDamageCore
# 脚
    execute store result score $Temp ScoreDamageCore run data get storage t.hard_score_damage: Protection[1]
    scoreboard players operation $EPF ScoreDamageCore += $Temp ScoreDamageCore
# 胸
    execute store result score $Temp ScoreDamageCore run data get storage t.hard_score_damage: Protection[2]
    scoreboard players operation $EPF ScoreDamageCore += $Temp ScoreDamageCore
# 頭
    execute store result score $Temp ScoreDamageCore run data get storage t.hard_score_damage: Protection[3]
    scoreboard players operation $EPF ScoreDamageCore += $Temp ScoreDamageCore
# リセット
    scoreboard players reset $Temp ScoreDamageCore
    data remove storage t.hard_score_damage: Protection