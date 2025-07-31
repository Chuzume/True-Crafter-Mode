#> asset:mob/enemy.zombie/tick/
#
# Mobのtick時の処理
#
# @within asset_manager:object/tick/tick.m

# ジャンプ攻撃関連
    # 跳んだら向き修正処理を実行
        execute if entity @s[tag=TMCM.Leaping] run function asset:mob/enemy.zombie/tick/leap/facing_loack
    # 跳んだ後、地面から足を離すとタグを付与
        execute if entity @s[tag=TMCM.Leaping,tag=!OnGround] run tag @s add TMCM.CanEndLeap
    # 地面から離れた後、もう一度着地でリセット
        execute if entity @s[tag=TMCM.CanEndLeap,tag=OnGround] run function asset:mob/enemy.zombie/tick/leap/end
    # 地面から離れた後、着水でもリセット
        execute if entity @s[tag=TMCM.CanEndLeap,predicate=lib:is_in_water/include_flowing] run function asset:mob/enemy.zombie/tick/leap/end

# 継承元の処理を実行する
    function asset:mob/super.tick
