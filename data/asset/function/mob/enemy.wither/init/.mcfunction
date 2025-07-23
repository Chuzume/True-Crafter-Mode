#> asset:mob/enemy.wither/init/
#
# Mobのinit時の処理
#
# @within asset_manager:object/init/init.m

# データ設定
#    data modify entity @s NoAI set value true

# 召喚して乗る
    summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["Test","AutoKillWhenDiePassenger","ProcessCommonTag"]}
    ride @s mount @n[type=armor_stand]

# 内部的に斧持ちになる
    item replace entity @s weapon.mainhand with netherite_axe

# フェイズ加算しとく
    scoreboard players set @s enemy.wither.Phase 1

# スコア調整
    scoreboard players set @s General.Mob.Tick -10

# チーム設定
    team join TrueCrafterEnemy
