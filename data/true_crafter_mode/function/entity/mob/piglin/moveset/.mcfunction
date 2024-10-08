#> true_crafter_mode:entity/mob/piglin/moveset/
#
# メイン動作
#
# @within function true_crafter_mode:entity/mob/piglin/tick

# 自身の敵対者にタグ付与
    execute on target run tag @s add TMCM.Target

# タイプ別行動
    # 剣持ち
        #execute if entity @s[tag=TMCM.Piglin.Sword,tag=!TMCM.Piglin.FireResist,tag=!TMCM.Piglin.Heal] run function true_crafter_mode:entity/mob/piglin/moveset/melee/
    # クロスボウ持ち
        execute if entity @s[tag=TMCM.Piglin.Crossbow,tag=!TMCM.Piglin.FireResist,tag=!TMCM.Piglin.Heal] run function true_crafter_mode:entity/mob/piglin/moveset/ranged

# 回復行動
    # 体力をスコア化
        execute if entity @s[tag=!TMCM.Piglin.CannotHeal] store result score @s TMCM.Health run data get entity @s Health 1
    # スコア化された体力が半分以下かつ、プレイヤーとの距離が開いていれば、一度のみ回復する
        execute if entity @s[tag=!TMCM.Piglin.CannotHeal,scores={TMCM.Health=..10},tag=!TMCM.Piglin.CannotHeal,tag=!TMCM.Piglin.Heal] unless entity @n[tag=TMCM.Target,distance=..8,tag=!TMCM.Exception] run function true_crafter_mode:entity/mob/piglin/moveset/heal/start
    # Tick処理
        execute if entity @s[tag=TMCM.Piglin.Heal] run function true_crafter_mode:entity/mob/piglin/moveset/heal/tick

# 壁破壊処理
    function true_crafter_mode:entity/mob/piglin/moveset/dig

# 立ち往生したらブロック設置
    function true_crafter_mode:entity/mob/common_moveset/place_block/check

# 泳ぐ。ただし泳ぎがヘタクソなので水泳中には攻撃ができない
    execute if entity @a[distance=..30,tag=!TMCM.Exception] if entity @s[nbt={HurtTime:0s}] if block ~ ~0.5 ~ #true_crafter_mode:liquid run function true_crafter_mode:enemy/piglin/swim

# 泳ぎ中に殴られた場合。前述の通りヘタクソなので情けない声になる
    execute if entity @s[tag=TMCM.Piglin.Silent,nbt={HurtTime:9s}] run playsound minecraft:entity.piglin.retreat hostile @a ~ ~ ~ 2 1
    execute if entity @s[tag=TMCM.Piglin.Silent,nbt={HurtTime:9s}] run playsound minecraft:entity.piglin.hurt hostile @a ~ ~ ~ 2 1

# 泳ぎ解除
    execute unless block ~ ~0.25 ~ #true_crafter_mode:liquid run function true_crafter_mode:enemy/piglin/swim_cancel

# ターゲットからタグを外す
    tag @n[tag=TMCM.Target] remove TMCM.Target
