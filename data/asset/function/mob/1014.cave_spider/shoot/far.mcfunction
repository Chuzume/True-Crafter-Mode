#> asset:mob/1014.cave_spider/shoot/far
#
# 
#
# @within function asset:mob/1014.cave_spider/shoot/

# 演出
    playsound minecraft:entity.spider.death hostile @a ~ ~ ~ 2 2
    playsound minecraft:entity.slime.attack hostile @a ~ ~ ~ 2 2

# 足を止める
    effect give @s slowness 1 10 true

# 速度設定
    scoreboard players set $Temporary Chuz.Speed 15

# ターゲッティング
    #execute as @n[tag=TMCM.Target] at @s anchored eyes positioned ^ ^ ^ run summon marker ~ ~ ~ {Tags:["TMCM.Marker.Aim"]}
    execute facing entity @n[tag=TMCM.Target] eyes rotated ~ ~-10 positioned ^ ^ ^5 run summon marker ~ ~ ~ {Tags:["TMCM.Marker.Aim"]}

# 召喚
    data modify storage api: Argument.ID set value 1002
    function api:object/summon
