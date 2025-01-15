#> asset:mob/1001.zombie/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/1001/tick

# 壁越し検知処理、ただしこのAIはゾンビピグリン由来のものなので、本人は使わない
#    execute unless entity @s[type=zombified_piglin] run function true_crafter_mode:entity/mob/common_moveset/custom_ai/search_player/

# ジャンプ攻撃関連
    # 跳んだら向き修正処理を実行
        execute if entity @s[tag=TMCM.Leaping] run function true_crafter_mode:entity/mob/zombie/leap_attack/facing_lock
    # 跳んだ後、地面から足を離すとタグを付与
        execute if entity @s[tag=TMCM.Leaping,tag=!OnGround] run tag @s add TMCM.CanEndLeap
    # 地面から離れた後、もう一度着地でリセット
        execute if entity @s[tag=TMCM.CanEndLeap,tag=OnGround] run function true_crafter_mode:entity/mob/zombie/leap_attack/end

# 継承元の処理を実行する
    function asset:mob/super.tick
