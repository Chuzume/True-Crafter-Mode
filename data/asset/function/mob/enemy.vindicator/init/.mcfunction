#> asset:mob/enemy.vindicator/init/
#
# Mobのinit時の処理
#
# @within asset_manager:object/init/init.m

# 高難易度時、確率で手になんか装備する
    # 素手だったら乱数ロール
        execute if score $Difficulty Global matches 4.. store result score $Random Temporary run random value 1..10
    # 火の熱4
        execute if score $Difficulty Global matches 4 if score $Random Temporary matches ..4 run loot replace entity @s weapon.mainhand loot asset:enhance/heat_4/axe
    # リセット
        scoreboard players reset $Random Temporary


say yo

# ステータス
    attribute @s minecraft:movement_speed base set 0.35
    attribute @s minecraft:step_height base set 1
    attribute @s max_health base set 30
    effect give @s instant_health 1 100 true

# Super
    function asset:mob/super.init
