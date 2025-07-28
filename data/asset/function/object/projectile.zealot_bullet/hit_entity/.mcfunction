#> asset:object/projectile.zealot_bullet/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset_manager:object/call_method/run_method.m

# ダメージを与える
    execute at @s positioned ~-0.25 ~-0.25 ~-0.25 as @a[tag=!PlayerShouldInvulnerable,dx=0] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] run function asset:object/projectile.zealot_bullet/hit_entity/damage.m with storage asset:context this

# サウンド
    playsound minecraft:entity.ender_eye.death neutral @a ~ ~ ~ 1 1.5

# 消失
    function asset:object/call.m {method:kill}
