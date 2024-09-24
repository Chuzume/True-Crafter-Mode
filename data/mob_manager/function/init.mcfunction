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
