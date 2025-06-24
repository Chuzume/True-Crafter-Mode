#> asset_manager:mob/summon/init
#
#
#
# @within function api:mob/core/summon

# エンティティストレージ呼び出し
    function oh_my_dat:please

# validate
    execute unless entity @s run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"データを適用するEntityが存在しません\nasを利用して対象のEntityを実行者にしてください"}]
    execute unless data storage asset:mob ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" ID","color":"red"}]

# リセット
    tag @s remove MobInit

# IDをそのまま付与
#    execute store result score @s MobID run data get storage api: Argument.ID
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobID set from storage api: Argument.ID

# Contextの設定
    #execute store result storage asset:context id int 1 run scoreboard players get @s MobID
    #execute store result storage asset:context originID int 1 run scoreboard players get @s MobID
    data modify storage asset:context id set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobID
    data modify storage asset:context originID set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobID

# 共通タグ付与
    tag @s add AssetMob

# ID代わりのタグを付与
    function asset_manager:mob/summon/give_id_tag.m with storage api: Argument

# データセット
#    function asset_manager:mob/summon/set_data

# フラグ立て
    function asset_manager:mob/summon/add_flag

# Mob側に実装されてるInitを実行
    function asset_manager:mob/triggers/init/ with storage asset:context

# EntityStorage呼び出し
    function oh_my_dat:please

# フィールドを元に戻す
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobField set from storage asset:context this

# リセット
    data remove storage asset:context this
    data remove storage asset:context ID
    data remove storage asset:context Field
    data remove storage asset:context id
    data remove storage asset:context originID
