#> mob_manager:init/
#
# このデータパックにおいては、強化対象のモブかつ、自然にスポーンしたAssetMobじゃないモブに対して実行する
#
# @within function core:tick

# ゾンビ
    execute if entity @s[type=zombie] run data modify storage api: Argument.ID set value 1001
# ハスク
    execute if entity @s[type=husk] run data modify storage api: Argument.ID set value 1002
# ハスク
    execute if entity @s[type=drowned] run data modify storage api: Argument.ID set value 1003
# ゾンビピグリン
    execute if entity @s[type=zombified_piglin] run data modify storage api: Argument.ID set value 1004
# ゾンビ村人
    execute if entity @s[type=zombie_villager] run data modify storage api: Argument.ID set value 1005
# スケルトン
    execute if entity @s[type=skeleton] run data modify storage api: Argument.ID set value 1006
# ストレイ
    execute if entity @s[type=stray] run data modify storage api: Argument.ID set value 1007
# ボグド
    execute if entity @s[type=bogged] run data modify storage api: Argument.ID set value 1008
# ウィザースケルトン
    execute if entity @s[type=wither_skeleton] run data modify storage api: Argument.ID set value 1009
# ウィッチ
    execute if entity @s[type=witch] run data modify storage api: Argument.ID set value 1010
# クリーパー
    execute if entity @s[type=creeper] run data modify storage api: Argument.ID set value 1011
# エンダーマン
    execute if entity @s[type=enderman] run data modify storage api: Argument.ID set value 1012
# クモ
    execute if entity @s[type=spider] run data modify storage api: Argument.ID set value 1013
# 洞窟グモ
    execute if entity @s[type=cave_spider] run data modify storage api: Argument.ID set value 1014
# ピグリン(剣)
    execute if entity @s[type=piglin,nbt={HandItems:[{id:"minecraft:golden_sword"}]}] run data modify storage api: Argument.ID set value 1015
# ピグリン(クロスボウ)
    execute if entity @s[type=piglin,nbt={HandItems:[{id:"minecraft:crossbow"}]}] run data modify storage api: Argument.ID set value 1016
# ヴィンディケーター
    execute if entity @s[type=vindicator] run data modify storage api: Argument.ID set value 1017
# ピリジャー
    execute if entity @s[type=pillager] run data modify storage api: Argument.ID set value 1018
# エヴォーカー
    execute if entity @s[type=evoker] run data modify storage api: Argument.ID set value 1019
# スライム
    execute if entity @s[type=slime] run data modify storage api: Argument.ID set value 1020
# マグマキューブ
    execute if entity @s[type=magma_cube] run data modify storage api: Argument.ID set value 1021

# エンダードラゴン
    execute if entity @s[type=ender_dragon] run data modify storage api: Argument.ID set value 1024
# ウィザー
    execute if entity @s[type=wither] run data modify storage api: Argument.ID set value 1025

# ウィザースケルトン
    execute if entity @s[type=wither_skeleton] run data modify storage api: Argument.ID set value 1026

# エラー
    execute unless data storage api: Argument.ID run tellraw @a [{"color":"red","text":"エラー! :"},{"color":"white","text":"実行しちゃいけない対象にInit処理がかかっている:" },{"color":"red","selector":"@s"}]

# 数値が入っていないなら処理を中断する
    execute unless data storage api: Argument.ID run tag @s remove MobInit
    execute unless data storage api: Argument.ID run return fail

# 出現したモブを今召喚したものとしてRegisterを行う
    tag @s add MobInit
    data modify storage asset:context init_to_natural_mob set value true

# 召喚
    function api:mob/summon

# やることやったらタグ付与
    tag @s add AlreadyInitMob
