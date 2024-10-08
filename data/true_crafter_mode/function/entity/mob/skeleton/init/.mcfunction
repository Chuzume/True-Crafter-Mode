#> true_crafter_mode:entity/mob/skeleton/init/
#
# 
#
# @within function true_crafter_mode:entity/mob/skeleton/tick

# 乱数処理
    execute store result score $Random Chuz.Temporary run function true_crafter_mode:random

# ほしい範囲に剰余算
    scoreboard players operation $Random Chuz.Temporary %= $5 Chuz.Const

# デバッグ用
    scoreboard players set $Random Chuz.Temporary 0

# 1/5の確率でエリートになる
    execute if score $Random Chuz.Temporary matches 0 run function true_crafter_mode:entity/mob/skeleton/init/elite/

# 帽子を被る
    function true_crafter_mode:entity/mob/common_moveset/wear_hat

# ステータス
    attribute @s minecraft:generic.step_height base set 1

# 正直難易度上昇に貢献しなさそうで、持ち替えがある都合、これを対策すると処理が散らかるのでアイテム拾わなくする
    data modify entity @s CanPickUpLoot set value false

# 鞘の処理
    # ウィザースケルトン以外
        execute if entity @s[type=!wither_skeleton] run summon item_display ~ ~ ~ {teleport_duration:1,Tags:["TMCM.Other.Sheath","Chuz.Init"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,-2.4f,1f],translation:[0f,-1.1f,-0.3f],scale:[1f,1f,1f]},item:{id:"minecraft:stone_axe",count:1}}
    # ウィザースケルトン
        execute if entity @s[type=wither_skeleton] run summon item_display ~ ~ ~ {teleport_duration:1,Tags:["TMCM.Other.Sheath","Chuz.Init"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,1f,1f],translation:[0f,-1.1f,-0.3f],scale:[1.2f,1.2f,1.2f]},item:{id:"minecraft:stone_sword",count:1}}
    # 乗せる
        ride @n[type=item_display,tag=Chuz.Init] mount @s
        tag @n[type=item_display,tag=Chuz.Init] remove Chuz.Init

# ウィザースケルトンの場合
    item replace entity @s[type=wither_skeleton] weapon.mainhand with bow
    attribute @s[type=wither_skeleton] generic.max_health base set 30 
    effect give @s[type=wither_skeleton] instant_damage 1 100 true

# デフォルトでは遠距離モードでスタート
    tag @s add TMCM.RangedMode

# Init終了
    tag @s add TMCM.AlreadyInit