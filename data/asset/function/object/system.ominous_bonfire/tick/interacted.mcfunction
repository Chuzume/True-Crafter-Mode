#> asset:object/system.ominous_bonfire/tick/interacted
#
# 
#
# @within function asset:object/system.ominous_bonfire/tick/

# 現在のsendCommandFeedbackの状況を保存した後、一旦falseに
    execute store result score $sendCommandFeedback Global run gamerule sendCommandFeedback
    gamerule sendCommandFeedback false

# 触ったやつがスコアボードをトリガーできるようにする
    execute on target run scoreboard players enable @s Trigger.Difficulty

# 触ったやつにダイアログを表示
    execute on target run dialog show @s asset:bonfire/main

# サウンド
    playsound minecraft:entity.breeze.land block @a ~ ~ ~ 0.5 0.5
    playsound minecraft:entity.breeze.land block @a ~ ~ ~ 0.5 0.5
