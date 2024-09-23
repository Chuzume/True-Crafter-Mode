#> asset_manager:mob/summon/init
#
# 
#
# @within function asset_manager:object/summon/init

# validate
    execute unless entity @s run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"データを適用するEntityが存在しません\nasを利用して対象のEntityを実行者にしてください"}]
    execute unless data storage asset:mob ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" ID","color":"red"}]

# リセット
    tag @s remove MobInit

# IDをそのまま付与
    execute store result score @s MobID run data get storage api: Argument.ID

# 共通タグ付与
    tag @s add AssetMob

# EntityStorage呼び出し
    function oh_my_dat:please

# Mob側に実装されてるInitを実行
    function asset_manager:mob/init/ with storage asset:context

# フィールドを元に戻す
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ObjectField set from storage asset:context this

# リセット
    data remove storage asset:context this
    data remove storage asset:context ID
    data remove storage asset:context Field
