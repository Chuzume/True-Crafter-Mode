#> mob_manager:init
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
    execute if entity @s[type=bogged] run data modify storage api: Argument.ID set value 1007
# ウィザースケルトン
    execute if entity @s[type=wither_skeleton] run data modify storage api: Argument.ID set value 1008
# ウィッチ
    execute if entity @s[type=witch] run data modify storage api: Argument.ID set value 1009
# クリーパー
    execute if entity @s[type=creeper] run data modify storage api: Argument.ID set value 1010
# エンダーマン
    execute if entity @s[type=enderman] run data modify storage api: Argument.ID set value 1011
# クモ
    execute if entity @s[type=spider] run data modify storage api: Argument.ID set value 1012
# 洞窟グモ
    execute if entity @s[type=cave_spider] run data modify storage api: Argument.ID set value 1013
# ピグリン(剣)
    execute if entity @s[type=piglin,nbt={HandItems:[{id:"minecraft:golden_sword"}]}] run data modify storage api: Argument.ID set value 1014
# ピグリン(クロスボウ)
    execute if entity @s[type=piglin,nbt={HandItems:[{id:"minecraft:crossbow"}]}] run data modify storage api: Argument.ID set value 1015
# ヴィンディケーター

# ピリジャー

# エヴォーカー

# イリュージョナー

# スライム

# マグマキューブ

# エンダードラゴン


# 数値が入っていないなら処理を中断する
    execute unless data storage api: Argument.ID run tag @s remove MobInit
    execute unless data storage api: Argument.ID run return fail

# 出現したモブを今召喚したものとしてRegisterを行う
    tag @s add MobInit
    data modify storage asset:context init_to_natural_spawn set value true

# 召喚
    function api:mob/summon

# やることやったらタグ付与
    tag @s add AlreadyInitMob
