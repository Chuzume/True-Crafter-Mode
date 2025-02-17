#> asset:object/2008.dragon_homing_shot/hit_block/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2008/hit_block

# 演出
    playsound entity.dragon_fireball.explode neutral @a ~ ~ ~ 1.5 1
    particle minecraft:dragon_breath ~ ~ ~ 0.5 0.5 0.5 0.3 50

# オブジェクト召喚
    function api:object/summon.m {ID:2009}

# 消失
    function asset:object/call.m {method:kill}
