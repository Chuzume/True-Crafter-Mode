#> asset:mob/enemy.ender_zealot/init/
#
# Mobのinit時の処理
#
# @within asset_manager:mob/triggers/init/init.m

# 俺が実行者です
    tag @s add this

# オブジェクト召喚
    function api:object/summon.m {ID:"enemy_part.ender_zealot_eye"}

# リセット
    tag @s remove this

# 体力設定
    attribute @s minecraft:max_health base set 30
    effect give @s instant_health 1 100 true

# 出現演出
    particle explosion ~ ~ ~ 0 0 0 0 1 force @a[distance=..32]
    playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 5 1.5
    playsound minecraft:block.end_portal_frame.fill hostile @a ~ ~ ~ 5 1.5

# ステータス
    data modify entity @s CustomName set value {"fallback":"エンダージーロット","translate":"entity.true_crafter_mode.ender_zealot"}

# チーム設定
    team join TrueCrafterEnemy
