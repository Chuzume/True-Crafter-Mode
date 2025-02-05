#> asset_manager:mob/tick/
#
# AssetMobに毎tick実行する処理
#
# @within function core:tick/

# 基本的なデータ取得処理

# 敵モブNBT関連
    tag @s[tag=!OnGround,nbt={OnGround:1b}] add OnGround
    tag @s[tag=!HurtEntity,nbt=!{HurtTime:0s}] add HurtEntity
    tag @s[tag=!HurtEntity9s,nbt={HurtTime:9s}] add HurtEntity9s
    tag @s[tag=!Standstill,nbt={Motion:[0.0,-0.0784000015258789d,0.0]}] add Standstill

# スライムかつ、分裂後のやつだったらもっかいInitしなおす
    execute if entity @s[type=#true_crafter_mode:slime,nbt={attributes:[{id:"minecraft:fall_damage_multiplier",base:0d}]}] run tag @s remove AlreadyInitMob

# 汎用タグの処理
    function asset_manager:mob/common_tag/

# MOB周りのトリガー処理
    function asset_manager:mob/triggers/

# リセット
    tag @s[tag=OnGround] remove OnGround
    tag @s[tag=HurtEntity] remove HurtEntity
    tag @s[tag=HurtEntity9s] remove HurtEntity9s
    tag @s[tag=Standstill] remove Standstill
