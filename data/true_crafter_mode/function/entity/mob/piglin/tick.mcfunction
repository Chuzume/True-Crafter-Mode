#> true_crafter_mode:entity/mob/piglin/tick
#
# ピグリンのメイン処理
#
# @within function true_crafter_mode:tick

# Init
    execute if entity @s[tag=!TMCM.AlreadyInit] run function true_crafter_mode:entity/mob/piglin/init/

# 耐火ポーション
    # 自分が燃えてたら使う
        execute if entity @s[nbt=!{Fire:-1s},tag=!TMCM.Piglin.FireResist] if entity @s[nbt=!{active_effects:[{id:"minecraft:fire_resistance"}]},tag=!TMCM.Piglin.FireResist] run function true_crafter_mode:entity/mob/piglin/moveset/drink_potion/start
    # Tick処理
        execute if entity @s[tag=TMCM.Piglin.FireResist] run function true_crafter_mode:entity/mob/piglin/moveset/drink_potion/tick

# 敵対時のメイン処理
    execute if predicate true_crafter_mode:in_hostile run function true_crafter_mode:entity/mob/piglin/moveset/
