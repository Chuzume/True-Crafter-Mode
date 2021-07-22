#> t.hard_score_damage:core/get_status
#
# 計算に必要なMobの情報を取得する
#
# @within function t.hard_score_damage:core/attack

# HP
    execute store result score $Health ScoreDamageCore run data get entity @s Health 10000
# 防御力
    execute if data storage t.hard_score_damage: {BypassArmor:0b} store result score $defensePoints ScoreDamageCore run attribute @s generic.armor get 100
    execute if data storage t.hard_score_damage: {BypassArmor:1b} run scoreboard players set $defensePoints ScoreDamageCore 0
# 防具強度
    execute if data storage t.hard_score_damage: {BypassArmor:0b} store result score $toughness ScoreDamageCore run attribute @s generic.armor_toughness get 100
    execute if data storage t.hard_score_damage: {BypassArmor:1b} run scoreboard players set $toughness ScoreDamageCore 0
# EPFが未設定または-1以下の時Protectionを参照
    execute store result score $EPF ScoreDamageCore run data get storage t.hard_score_damage: EPF
    execute unless score $EPF ScoreDamageCore matches 0.. run function t.hard_score_damage:core/get_default_epf
# 耐性エフェクト
    execute if data storage t.hard_score_damage: {BypassResistance:0b} store result score $Resistance ScoreDamageCore run data get entity @s ActiveEffects[{Id:11b}].Amplifier
    execute if data storage t.hard_score_damage: {BypassResistance:0b} if data entity @s ActiveEffects[{Id:11b}] run scoreboard players add $Resistance ScoreDamageCore 1
    execute if data storage t.hard_score_damage: {BypassResistance:1b} run scoreboard players set $Resistance ScoreDamageCore 0