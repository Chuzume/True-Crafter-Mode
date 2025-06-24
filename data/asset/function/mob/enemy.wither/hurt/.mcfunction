#> asset:mob/enemy.wither/hurt/
#
# Mobのダメージ時の処理
#
# @within function asset_manager:mob/triggers/hurt/hurt.m

# ヘルスチェック
    function asset:mob/enemy.wither/hurt/check_health

# 耐性上昇モード時、殴ると硬い音がなる
    execute if entity @s[tag=1025.Shield] run playsound minecraft:entity.blaze.hurt hostile @a ~ ~ ~ 1 1.5
    execute if entity @s[tag=1025.Shield] run playsound minecraft:block.anvil.place hostile @a ~ ~ ~ 1 1.5
