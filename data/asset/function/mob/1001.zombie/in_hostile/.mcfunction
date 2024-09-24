#> asset:mob/1001.zombie/in_hostile/
#
# 敵対時のメソッド
#
# @within asset:mob/alias/1001/in_hostile

# 自身の敵対者にタグ付与
    execute on target run tag @s add TMCM.Target

# 飛びかかり攻撃
    # 付近にプレイヤーがいたらスコア加算、ただし飛びかかり中は加算しない
        execute unless score @s[tag=!TMCM.Leaping,tag=!Standstill] TMCM.Tick matches 30.. if entity @n[tag=TMCM.Target,distance=..10] run scoreboard players add @s TMCM.Tick 1
    # 途中で予備動作を行い、スコアが止まらなくなる
        execute if score @s TMCM.Tick matches 30 run function asset:mob/1001.zombie/in_hostile/windup
        execute if score @s TMCM.Tick matches 30.. run scoreboard players add @s TMCM.Tick 1
    # 前方にブロックがあるならスコアをリセット
        execute rotated ~ 0 unless block ^ ^ ^1 #true_crafter_mode:no_collision run scoreboard players reset @s TMCM.Tick
        execute rotated ~ 0 positioned ~ ~1 ~ unless block ^ ^ ^1 #true_crafter_mode:no_collision run scoreboard players reset @s TMCM.Tick
    # 実行
        execute if entity @s[scores={TMCM.Tick=40}] rotated ~ 0 run function asset:mob/1001.zombie/in_hostile/leap
    # 着地時しばらくこっちを見失うので、それを考慮した数値でリセット
        execute if score @s TMCM.Tick matches 80.. run scoreboard players reset @s TMCM.Tick

# 立ち往生したらブロック設置
    function true_crafter_mode:entity/mob/common_moveset/place_block/check

# ターゲットからタグを外す
    tag @n[tag=TMCM.Target] remove TMCM.Target

# 実装フラグを立てる
    data modify storage asset:mob Implement set value true