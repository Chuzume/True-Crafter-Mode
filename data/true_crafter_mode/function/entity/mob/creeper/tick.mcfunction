
# スポーン時
    execute if entity @s[tag=!TrueCrafterMode.AlreadyInit] run function true_crafter_mode:entity/mob/creeper/init

# 攻撃行動
    execute if entity @s[predicate=true_crafter_mode:in_hostile] run function true_crafter_mode:entity/mob/creeper/moveset

# プレイヤーが微妙な距離にいるなら透明化
    execute if entity @s[tag=!ChuzHurtEntity] unless score @s TrueCrafterMode.Tick matches 0.. if entity @a[distance=4..32,tag=!TrueCrafterMode.Exception] run function true_crafter_mode:entity/mob/creeper/stealth/on

# 近くにいれば解除
    execute if entity @s[tag=t.hardStealthMove] if entity @a[distance=..4,tag=!TrueCrafterMode.Exception] run function true_crafter_mode:entity/mob/creeper/stealth/off

# 誰とも敵対していない場合、スコアリセット
    execute unless entity @s[predicate=true_crafter_mode:in_hostile] run scoreboard players reset @s TrueCrafterMode.Tick
