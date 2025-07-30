#> asset:mob/enemy.vindicator/init/
#
# Mobのinit時の処理
#
# @within asset_manager:object/init/init.m

# 高難易度時、手持ちのアイテムにコンポーネントがないなら、確率で手になんか装備する
    # 火の熱4
        execute if score $Difficulty Global matches 4 if predicate lib:random_pass_per/40 unless data entity @s equipment.mainhand.components run loot replace entity @s weapon.mainhand loot asset:enhance/heat_4/axe
    # 火の熱5
        execute if score $Difficulty Global matches 5.. if predicate lib:random_pass_per/60 unless data entity @s equipment.mainhand.components run loot replace entity @s weapon.mainhand loot asset:enhance/heat_5/axe

# ステータス
    attribute @s minecraft:movement_speed base set 0.35
    attribute @s minecraft:step_height base set 1
    attribute @s max_health base set 30
    effect give @s instant_health 1 100 true

# Super
    function asset:mob/super.init
