#> core:tick/ominous_campifire_place
#
# TODO: 全体的に大雑把な処理なので見直しの必要があるかも
#
# @within function core:tick/

# 焚き火に重ねた場合は直接ドロップ
    execute if block ~ ~ ~ campfire run loot spawn ~ ~ ~ loot asset:item/ominous_campire

# オブジェクト召喚、ただし焚き火に重なってるとやらない
    execute unless block ~ ~ ~ campfire align xyz positioned ~0.5 ~ ~0.5 run function api:object/summon.m {ID:system.ominous_bonfire}

# 自壊
    kill @s
