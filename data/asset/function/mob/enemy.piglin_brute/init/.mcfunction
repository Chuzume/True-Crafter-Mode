#> asset:mob/enemy.piglin_brute/init/
#
# Mobのinit時の処理
#
# @within asset_manager:mob/triggers/init/init.m

# 高難易度時、手持ちのアイテムにコンポーネントがないなら、確率で手になんか装備する
    # 火の熱4
        execute if score $Difficulty Global matches 4 if predicate lib:random_pass_per/30 unless data entity @s equipment.mainhand.components run loot replace entity @s weapon.mainhand loot asset:enhance/heat_4/golden
    # 火の熱5
        execute if score $Difficulty Global matches 5.. if predicate lib:random_pass_per/60 unless data entity @s equipment.mainhand.components run loot replace entity @s weapon.mainhand loot asset:enhance/heat_5/brute

# ステータス
    effect give @s fire_resistance infinite 0 false
    data modify entity @s IsImmuneToZombification set value true
    attribute @s fall_damage_multiplier base set 0
    attribute @s knockback_resistance base set 0.3

# Super
    function asset:mob/super.init
