#> asset:mob/1013.spider/shoot/spread/
#
# 拡散飛ばし
#
# @within function asset:mob/1013.spider/shoot/


# ターゲッティング
    execute rotated ~ 0 run summon marker ^1 ^1 ^ {Tags:["TMCM.Marker.Aim"]}

# 召喚
    function asset:mob/1013.spider/shoot/spread/summon

# ターゲッティング
    execute rotated ~ 0 run summon marker ^-1 ^1 ^ {Tags:["TMCM.Marker.Aim"]}

# 召喚
    function asset:mob/1013.spider/shoot/spread/summon

# ターゲッティング
    execute rotated ~ 0 run summon marker ^0.5 ^1 ^1 {Tags:["TMCM.Marker.Aim"]}

# 召喚
    function asset:mob/1013.spider/shoot/spread/summon

# ターゲッティング
    execute rotated ~ 0 run summon marker ^-0.5 ^1 ^1 {Tags:["TMCM.Marker.Aim"]}

# 召喚
    function asset:mob/1013.spider/shoot/spread/summon
