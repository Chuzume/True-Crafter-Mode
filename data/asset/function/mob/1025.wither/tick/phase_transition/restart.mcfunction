#> asset:mob/1025.wither/tick/phase_transition/restart
#
# 行動を再開
#
# @within function asset:mob/1025.wither/tick/phase_transition/

# 演出
    playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 1.5 0.5

# 無敵などを解除
    data modify entity @s NoAI set value false
    data modify entity @s Silent set value false
    data modify entity @s Invulnerable set value false

# Tick初期化
    scoreboard players set @s General.Mob.Tick -20

# フェイズ移行動作のタグを削除
    tag @s remove 1025.Transition.Phase3

# リセット
    function asset:mob/1025.wither/tick/reset/
