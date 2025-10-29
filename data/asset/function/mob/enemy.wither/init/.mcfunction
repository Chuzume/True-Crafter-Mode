#> asset:mob/enemy.wither/init/
#
# Mobのinit時の処理
#
# @within asset_manager:object/init/init.m

# データ設定
#    data modify entity @s NoAI set value true

# ステータス
    attribute @s max_health base set 600
    data modify entity @s Health set value 600.0f

# 召喚して乗る
    summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["Test","AutoKillWhenDiePassenger","ProcessCommonTag"]}
    ride @s mount @n[type=armor_stand]

# 内部的に斧持ちになる、ドロップはしない
    item replace entity @s weapon.mainhand with netherite_axe
    data modify entity @s drop_chances.mainhand set value 0.0

# フェイズ設定しとく
    scoreboard players set @s enemy.wither.Phase 1

# スコア調整
    scoreboard players set @s General.Mob.Tick -10

# チーム設定
    team join TrueCrafterEnemy

# タグ付与
    tag @s add NoEnhance
