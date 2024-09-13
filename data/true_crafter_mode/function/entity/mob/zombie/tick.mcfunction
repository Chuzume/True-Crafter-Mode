# スポーン時
    execute if entity @s[tag=!t.hardAlreadyInit] run function true_crafter_mode:entity/mob/zombie/init

# 敵対状態なら
    execute if entity @s[predicate=true_crafter_mode:in_hostile] run function true_crafter_mode:entity/mob/zombie/moveset

# 自身がゾンビピグリンなら常時敵対
    data modify entity @s[type=zombified_piglin] AngryAt set from entity @p[tag=!TrueCrafterMode.Exception] UUID

# ジャンプ攻撃関連
    # 跳んだら向き修正処理を実行
        execute if entity @s[tag=TrueCrafterMode.Leaping] run function true_crafter_mode:entity/mob/zombie/leap_attack/facing_lock
    # 跳んだ後、地面から足を離すとタグを付与
        execute if entity @s[tag=TrueCrafterMode.Leaping,tag=!ChuzOnGround] run tag @s add TrueCrafterMode.CanEndLeap
    # 地面から離れた後、もう一度着地でリセット
        execute if entity @s[tag=TrueCrafterMode.CanEndLeap,tag=ChuzOnGround] run function true_crafter_mode:entity/mob/zombie/leap_attack/end


# 誰とも敵対していない場合、スコアリセット
    execute unless entity @s[predicate=true_crafter_mode:in_hostile] run scoreboard players reset @s TrueCrafterMode.Tick
