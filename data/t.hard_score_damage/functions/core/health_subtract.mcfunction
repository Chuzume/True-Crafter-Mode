#> t.hard_score_damage:core/health_subtract
#
# MobのHealthを減算する
#
# @within function t.hard_score_damage:core/attack

#> Temp
# @private
    #declare objective ScoreToHealth

# MobのHealthよりダメージが高い場合Healthに設定
    scoreboard players operation $Damage ScoreDamageCore < $Health ScoreDamageCore
# Health減算
    scoreboard players operation $SubtractedHealth ScoreDamageCore = $Health ScoreDamageCore
    scoreboard players operation $SubtractedHealth ScoreDamageCore -= $Damage ScoreDamageCore
# Mobへ代入
    # Player
        execute if entity @s[type=player] run scoreboard players operation $Health ScoreDamageCore /= $100 ScoreDamageCore
        execute if entity @s[type=player] run scoreboard players operation $SubtractedHealth ScoreDamageCore /= $100 ScoreDamageCore
        execute if entity @s[type=player] run scoreboard players operation $Damage ScoreDamageCore /= $100 ScoreDamageCore
        execute if entity @s[type=player] store success score $hasDependency ScoreDamageCore unless score @s ScoreToHealth matches 0.. run scoreboard players operation @s ScoreToHealth = $Health ScoreDamageCore
        execute if entity @s[type=player] run scoreboard players operation @s ScoreToHealth -= $Damage ScoreDamageCore
        execute if entity @s[type=player] if score $hasDependency ScoreDamageCore matches 0 run tellraw @a [{"text":"ERROR >> ","color":"red"},{"text":"ScoreToHealth","underlined":true,"color":"#4c4cff","clickEvent":{"action":"open_url","value":"https://github.com/Ai-Akaishi/ScoreToHealth"}},{"text":"が導入されていないため\nPlayerにダメージを与えることは出来ません","color":"white"}]
    # Mob
        execute if entity @s[type=!player] if score $SubtractedHealth ScoreDamageCore matches 1.. store result entity @s Health float 0.0001 run scoreboard players get $SubtractedHealth ScoreDamageCore
    # Common
        #execute if score $SubtractedHealth ScoreDamageCore matches ..0 run kill @s

    # プレイヤーかつヘルス0なら死亡メッセージ
        execute if entity @s[type=player] if score @s ScoreToHealth matches ..0 run function t.hard:message/death

# 演出
    execute if score $SubtractedHealth ScoreDamageCore matches 1.. if entity @s[type=#t.hard_score_damage:undead] run effect give @s instant_health 1 30 true
    execute if score $SubtractedHealth ScoreDamageCore matches 1.. if score $Resistance ScoreDamageCore matches 5.. if entity @s[type=!#t.hard_score_damage:undead] run effect give @s instant_damage 1 0 true
    execute if score $SubtractedHealth ScoreDamageCore matches 1.. if score $Resistance ScoreDamageCore matches ..4 if entity @s[type=!player,type=!#t.hard_score_damage:undead] run effect give @s instant_damage 1 31 true
    execute if score $SubtractedHealth ScoreDamageCore matches 1.. if score $Resistance ScoreDamageCore matches ..4 if entity @s[type=player] run summon area_effect_cloud ~ ~ ~ {Duration:14,Age:4,Effects:[{Id:11b,Amplifier:127b,Duration:1,ShowParticles:0b},{Id:7b,Amplifier:0b,Duration:1,ShowParticles:0b}]}
    execute if data storage t.hard_score_damage: {DisableParticle:0b} at @s run function t.hard_score_damage:core/damage_indicator

# リセット
    scoreboard players reset $Damage ScoreDamageCore
    scoreboard players reset $Health ScoreDamageCore
    scoreboard players reset $SubtractedHealth ScoreDamageCore
    scoreboard players reset $hasDependency ScoreDamageCore
    scoreboard players reset $Resistance ScoreDamageCore