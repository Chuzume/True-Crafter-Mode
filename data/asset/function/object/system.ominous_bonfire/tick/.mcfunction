#> asset:object/system.ominous_bonfire/tick/
#
# Objectのtick時の処理
#
# @within asset_manager:object/tick/tick.m

# 触れられた場合の処理。クールタイムが設定されてたら実行されない。
    execute if data entity @s interaction run function asset:object/system.ominous_bonfire/tick/interacted

# 土台が消えると、これも消える
    execute unless block ~ ~ ~ campfire[lit=true] run function asset:object/system.ominous_bonfire/tick/kill

# パーティクル
    # 火の熱: 1
        execute if score $Difficulty Global matches 1 run function asset:object/system.ominous_bonfire/tick/particle/1
    # 火の熱: 2
        execute if score $Difficulty Global matches 2 run function asset:object/system.ominous_bonfire/tick/particle/2
    # 火の熱: 3
        execute if score $Difficulty Global matches 3 run function asset:object/system.ominous_bonfire/tick/particle/3
    # 火の熱: 4
        execute if score $Difficulty Global matches 4 run function asset:object/system.ominous_bonfire/tick/particle/4
    # 火の熱: 5
        execute if score $Difficulty Global matches 5 run function asset:object/system.ominous_bonfire/tick/particle/5

# リセット
    data remove entity @s interaction
