#> asset:mob/1018.pillager/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/1017/init

# ステータス強化
    attribute @s minecraft:generic.knockback_resistance base set 0.3
    attribute @s minecraft:generic.fall_damage_multiplier base set 0
    attribute @s minecraft:generic.step_height base set 1
    attribute @s generic.max_health base set 30
    effect give @s instant_health 1 100 true

# 持ち物強化
    enchant @s multishot
