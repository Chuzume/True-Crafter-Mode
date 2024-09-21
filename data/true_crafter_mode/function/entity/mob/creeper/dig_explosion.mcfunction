#> true_crafter_mode:entity/mob/creeper/dig_explosion
#
# 壁破壊処理
#
# @within function true_crafter_mode:entity/mob/common_moveset/custom_ai/search_player/tick_owner

# ステルス解除
    tag @s remove TMCM.Creeper.Stealth

# 足を止める
    effect give @s slowness 1 10 true

# 起爆準備
    # スコア加算
        scoreboard players add @s TMCM.Action.Dig 1
    # 演出
        function true_crafter_mode:entity/mob/creeper/ignited_particle

# 爆発を起こす
    execute if score @s TMCM.Action.Dig matches 50 run function true_crafter_mode:entity/mob/creeper/explosion

# 爆発が終わったあとに無敵を解除し、スコアリセット
    execute if score @s TMCM.Action.Dig matches 51.. run function true_crafter_mode:entity/mob/creeper/return_to_normal
