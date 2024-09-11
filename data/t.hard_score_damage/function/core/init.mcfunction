#> t.hard_score_damage:core/init
#
# スコアボードを用意する
#
# @within tag/function minecraft:load

#> 詳細はfunctionのホバー情報を確認してください
# @public
    #declare storage t.hard_score_damage:

#> Private
# @internal
    #declare team null
    scoreboard objectives add ScoreDamageCore dummy
    scoreboard players set $2 ScoreDamageCore 2
    scoreboard players set $4 ScoreDamageCore 4
    scoreboard players set $5 ScoreDamageCore 5
    scoreboard players set $10 ScoreDamageCore 10
    scoreboard players set $20 ScoreDamageCore 20
    scoreboard players set $25 ScoreDamageCore 25
    scoreboard players set $100 ScoreDamageCore 100
    scoreboard players set $2000 ScoreDamageCore 2000
    scoreboard players set $10000 ScoreDamageCore 10000
    scoreboard players set $20000 ScoreDamageCore 20000
    scoreboard players set $2^19 ScoreDamageCore 524288