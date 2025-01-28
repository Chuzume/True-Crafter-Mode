#> asset:mob/1023.zombie_brute/tick/
#
# Mobのtick時の処理
#
# @within asset:mob/alias/1023/tick

# 着地攻撃
    execute if score @s[tag=TMCM.CanEndLeap,tag=OnGround] General.Mob.Tick matches 50.. run function asset:mob/call.m {method:area_damage}

# Super
    function asset:mob/super.tick
