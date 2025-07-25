#> asset:mob/enemy.piglin_sword/in_hostile/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/enemy.in_hostile

# 回復行動
    # 体力をスコア化
        execute if entity @s[tag=!enemy.piglin_sword.HealUsed] store result score @s TMCM.Health run data get entity @s Health 1
    # スコア化された体力が半分以下かつ、プレイヤーとの距離が開いていれば、一度のみ回復する
        execute if entity @s[tag=!enemy.piglin_sword.HealUsed,scores={TMCM.Health=..10},tag=!enemy.piglin_sword.HealUsed,tag=!enemy.piglin_sword.Using.Heal] unless entity @n[tag=TMCM.Target,distance=..8,tag=!PlayerShouldInvulnerable] run function asset:mob/enemy.piglin_sword/in_hostile/heal/start
    # Tick処理
        execute if entity @s[tag=enemy.piglin_sword.Using.Heal] run function asset:mob/enemy.piglin_sword/in_hostile/heal/tick
