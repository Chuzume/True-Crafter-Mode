#> asset:mob/1015.piglin_sword/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/1015/tick


# 耐火ポーション
    # 自分が燃えてたら使う
        execute if entity @s[nbt=!{Fire:-1s},tag=!1015.Using.FireResist] if entity @s[nbt=!{active_effects:[{id:"minecraft:fire_resistance"}]},tag=!1015.Using.FireResist] run function asset:mob/1015.piglin_sword/tick/fire_resist/start
    # Tick処理
        execute if entity @s[tag=1015.Using.FireResist] run function asset:mob/1015.piglin_sword/tick/fire_resist/tick

# Super
    function asset:mob/super.tick

# 実装フラグを立てる
    data modify storage asset:mob Implement set value true