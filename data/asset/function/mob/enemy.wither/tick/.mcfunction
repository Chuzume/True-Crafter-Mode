#> asset:mob/enemy.wither/tick/
#
# Mobのtick時の処理
#
# @within asset_manager:object/tick/tick.m

# 出現時の動作
    execute if entity @s[nbt=!{Invul:0}] facing entity @n[tag=TMCM.Target,distance=..48] feet positioned ^ ^ ^-10 rotated as @s positioned ^ ^ ^-40 facing entity @s feet positioned as @s rotated ~ ~ run rotate @s ~ ~

# 敵対時の動作
    execute if entity @s[tag=!enemy.wither.Transition.Phase3,nbt={Invul:0}] if predicate lib:in_hostile run function asset:mob/enemy.wither/tick/in_hostile

# フェイズ移行動作
    execute if entity @s[tag=enemy.wither.Transition.Phase3] run function asset:mob/enemy.wither/tick/phase_transition/

# リセット
    execute if entity @s[tag=!enemy.wither.Transition.Phase3] unless predicate lib:in_hostile run function asset:mob/enemy.wither/tick/reset/

# 付近に誰もいないな…と思った場合、元のアイテムに戻ってしまう
    execute if entity @s[tag=!enemy.wither.Transition.Phase3,nbt={Invul:0}] unless predicate lib:in_hostile run function asset:mob/enemy.wither/tick/out_off_combat/tick
