#> asset:mob/1017.vindicator/in_hostile/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/1017/in_hostile

# 強靭アップの構え
    # 付近にプレイヤーがいたらスコア加算、ただし飛びかかり中は加算しない
        execute unless score @s 1017.Tick matches 40.. if entity @n[tag=TMCM.Target,distance=..10] run scoreboard players add @s 1017.Tick 1
    # 途中で予備動作を行い、スコアが止まらなくなる
        execute if score @s 1017.Tick matches 40 run function asset:mob/1017.vindicator/in_hostile/strong_walk/windup
        execute if score @s 1017.Tick matches 40.. run scoreboard players add @s 1017.Tick 1
    # 実行
        execute if entity @s[scores={1017.Tick=60}] run function asset:mob/1017.vindicator/in_hostile/strong_walk/start
        execute if entity @s[scores={1017.Tick=60..}] run function asset:mob/1017.vindicator/in_hostile/strong_walk/tick

# 立ち往生したらブロック設置
    function true_crafter_mode:entity/mob/common_moveset/place_block/check
