#> asset:mob/enemy.enderman_weak/init/
#
# Mobのinit時の処理
#
# @within asset_manager:mob/triggers/init/init.m

# ステータス
    attribute @s minecraft:movement_speed base set 0.1
    attribute @s minecraft:step_height base set 0.5
    attribute @s minecraft:scale base set 0.65
    attribute @s minecraft:attack_damage base set 4

# コイツなんか落とすもんショボいぞ！
    data modify entity @s DeathLootTable set value ""

# 体力設定
    attribute @s minecraft:max_health base set 20
    effect give @s instant_health 1 100 true
