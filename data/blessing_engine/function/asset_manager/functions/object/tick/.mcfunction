#> blessing_engine:asset_manager/object/tick/
#
# ObjectのTick処理
#
# @within function
#   blessing_engine:asset_manager/object/triggers/tick
#   blessing_engine:asset_manager/object/tick/call_super_method

# 取得した数値でマクロ実行
    function blessing_engine:asset_manager/object/tick/tick.m with storage asset:context

# super.tick呼び出し
    execute unless data storage asset:object {Implement:true} run function blessing_engine:asset_manager/object/tick/call_super_method
    data remove storage asset:object Implement
