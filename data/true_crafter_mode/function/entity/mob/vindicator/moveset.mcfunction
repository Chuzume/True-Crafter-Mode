#> true_crafter_mode:entity/mob/vindicator/moveset
#
# 
#
# @within function true_crafter_mode:entity/mob/vindicator/tick

# 自身の敵対者にタグ付与
    execute on target run tag @s add TMCM.Target

# 強靭アップの構え
    # 付近にプレイヤーがいたらスコア加算、ただし飛びかかり中は加算しない
        execute unless score @s TMCM.Tick matches 40.. if entity @n[tag=TMCM.Target,distance=..10] run scoreboard players add @s TMCM.Tick 1
    # 途中で予備動作を行い、スコアが止まらなくなる
        execute if score @s TMCM.Tick matches 40 run function true_crafter_mode:entity/mob/zombie/leap_attack/windup
        execute if score @s TMCM.Tick matches 40.. run scoreboard players add @s TMCM.Tick 1
    # 実行
        execute if entity @s[scores={TMCM.Tick=60}] run function true_crafter_mode:entity/mob/vindicator/stonrg_walk/active
        execute if entity @s[scores={TMCM.Tick=60..}] run function true_crafter_mode:entity/mob/vindicator/stonrg_walk/tick
    # リセット
        execute if entity @s[scores={TMCM.Tick=100}] run function true_crafter_mode:entity/mob/vindicator/stonrg_walk/reset

# 立ち往生したらブロック設置
    function true_crafter_mode:entity/mob/common_moveset/place_block/check

# 泳ぐ
    #execute if entity @a[distance=..30,tag=!TMCM.Exception] if entity @s[type=!drowned,nbt={HurtTime:0s}] if block ~ ~0.5 ~ #true_crafter_mode:liquid run function true_crafter_mode:enemy/common/swim

# ターゲットからタグを外す
    tag @n[tag=TMCM.Target] remove TMCM.Target
