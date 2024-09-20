# スポーン時
    execute if entity @s[tag=!TMCM.AlreadyInit] run function true_crafter_mode:entity/mob/zombie/init

# 敵対状態なら
    execute if entity @s[predicate=true_crafter_mode:in_hostile] run function true_crafter_mode:entity/mob/zombie/moveset

# 自身がゾンビピグリンなら常時敵対
    data modify entity @s[type=zombified_piglin] AngryAt set from entity @p[tag=!TMCM.Exception] UUID

# 誰とも敵対しておらず、かつ付近に誰かいるならそいつを探す
    execute if entity @p[distance=..32] unless entity @s[tag=TMCM.UsingPiglinAI] unless predicate true_crafter_mode:in_hostile run function true_crafter_mode:entity/mob/common_moveset/piglin_ai/search_player/start
    execute on passengers if entity @s[type=piglin,tag=TMCM.PiglinAI.Search] run function true_crafter_mode:entity/mob/common_moveset/piglin_ai/search_player/tick

# ジャンプ攻撃関連
    # 跳んだら向き修正処理を実行
        execute if entity @s[tag=TMCM.Leaping] run function true_crafter_mode:entity/mob/zombie/leap_attack/facing_lock
    # 跳んだ後、地面から足を離すとタグを付与
        execute if entity @s[tag=TMCM.Leaping,tag=!ChuzOnGround] run tag @s add TMCM.CanEndLeap
    # 地面から離れた後、もう一度着地でリセット
        execute if entity @s[tag=TMCM.CanEndLeap,tag=ChuzOnGround] run function true_crafter_mode:entity/mob/zombie/leap_attack/end

# 誰とも敵対していない場合、スコアリセット
    execute unless entity @s[predicate=true_crafter_mode:in_hostile] run function true_crafter_mode:entity/mob/common_moveset/reset
