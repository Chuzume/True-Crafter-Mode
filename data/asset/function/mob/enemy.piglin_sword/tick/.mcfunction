#> asset:mob/enemy.piglin_sword/tick/
#
# Mobのtick時の処理
#
# @within asset_manager:object/tick/tick.m

# 耐火ポーション
    # 自分が燃えてたら使う
        execute if entity @s[nbt=!{Fire:0s},tag=!enemy.piglin_sword.Using.FireResist] if entity @s[nbt=!{active_effects:[{id:"minecraft:fire_resistance"}]},tag=!enemy.piglin_sword.Using.FireResist] run function asset:mob/enemy.piglin_sword/tick/fire_resist/start
    # Tick処理
        execute if entity @s[tag=enemy.piglin_sword.Using.FireResist] run function asset:mob/enemy.piglin_sword/tick/fire_resist/tick

# Super
    function asset:mob/super.tick
