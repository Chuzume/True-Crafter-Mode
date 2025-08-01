#> asset:mob/enemy.zombified_piglin/init/
#
# Mobのinit時の処理
#
# @within asset_manager:mob/triggers/init/init.m

# 怒ってるな～
    data modify entity @s AngerTime set value 2147483647

# ちょっと足が早すぎる気がする
    attribute @s minecraft:movement_speed base set 0.23

# 体力もちょっと低めに
    attribute @s minecraft:max_health base set 15
    data modify entity @s Health set value 15

# 火の熱4以降ではチェイサーAI持ちになるので落下を無効化
    execute if score $Difficulty Global matches 4.. run attribute @s fall_damage_multiplier base set 0

# 高難易度時、手持ちのアイテムにコンポーネントがないなら、確率で手になんか装備する
    # 火の熱4
        execute if score $Difficulty Global matches 4 if predicate lib:random_pass_per/40 unless data entity @s equipment.mainhand.components run loot replace entity @s weapon.mainhand loot asset:enhance/heat_4/golden
    # 火の熱5
        execute if score $Difficulty Global matches 5.. if predicate lib:random_pass_per/60 unless data entity @s equipment.mainhand.components run loot replace entity @s weapon.mainhand loot asset:enhance/heat_5/golden 
