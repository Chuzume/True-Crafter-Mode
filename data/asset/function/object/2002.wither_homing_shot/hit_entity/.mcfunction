#> asset:object/2002.wither_homing_shot/hit_entity/
#
# 
#
# @within function data/asset/function/object/alias/2002/hit_entitymcfunction

# ダメージを与える
    execute at @s positioned ~-0.25 ~-0.25 ~-0.25 as @a[tag=!PlayerShouldInvulnerable,dx=0] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] run function asset:object/2002.wither_homing_shot/hit_entity/damage.m with storage asset:context this

# 消失
    function asset:object/call.m {method:kill}
