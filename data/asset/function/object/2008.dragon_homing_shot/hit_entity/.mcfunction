#> asset:object/2008.dragon_homing_shot/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2008/hit_entity

# ダメージを与える
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[tag=!PlayerShouldInvulnerable,dx=0] run function asset:object/2008.dragon_homing_shot/hit_entity/damage.m with storage asset:context this
