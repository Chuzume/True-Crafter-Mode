#> blessing_engine:asset_manager/trader/register/trades_map/item_normalize/
#
#
#
# @within function blessing_engine:asset_manager/trader/register/trades_map/

# 神器
    execute unless data storage asset:trader Item.PresetItem unless data storage asset:trader Item.id run function blessing_engine:asset_manager/trader/register/trades_map/item_normalize/from_artifact
# プリセットデータ
    execute if data storage asset:trader Item.PresetItem run function blessing_engine:asset_manager/trader/register/trades_map/item_normalize/from_preset
# 何もする必要がないよね
    # execute if data storage asset:trader Item.id
