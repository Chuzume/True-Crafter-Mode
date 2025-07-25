#> asset:object/system.ominous_bonfire/tick/
#
# Objectのtick時の処理
#
# @within asset_manager:object/tick/tick.m

# 触れられた場合の処理。クールタイムが設定されてたら実行されない。
    execute if data entity @s interaction run function asset:object/system.ominous_bonfire/tick/interacted

# 土台が消えると、これも消える
    execute unless block ~ ~ ~ campfire[lit=true] run function asset:object/system.ominous_bonfire/tick/kill

# リセット
    data remove entity @s interaction
