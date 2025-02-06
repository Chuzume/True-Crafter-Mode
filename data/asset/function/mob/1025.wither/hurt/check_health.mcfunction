#> asset:mob/1025.wither/hurt/check_health
#
# 
#
# @within function asset:mob/1025.wither/hurt/

#> private
# @private
    #declare score_holder $Health

# 現在体力を割合で出す
    function api:mob/get_health_percent

# ストレージをスコアに
    execute store result score $Health Temporary run data get storage api: Return.HealthPer 100
#    tellraw @a [{"text":"score: "},{"score":{"objective":"Temporary","name":"$Health"}}]

# 75%以下
    execute if score @s 1025.Phase matches 1 if score $Health Temporary matches ..75 run function asset:mob/1025.wither/hurt/reset
# HP50%以下
    execute if score @s 1025.Phase matches 2 if score $Health Temporary matches ..50 run function asset:mob/1025.wither/hurt/reset

# リセット
    scoreboard players reset $Health
