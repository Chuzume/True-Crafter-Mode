#> blessing_engine:asset_manager/artifact/triggers/tick
#
# 各神器処理へデータ受け渡し
#
# @within function blessing_engine:asset_manager/artifact/triggers/

# イベント発火前に実行するやつ
    function blessing_engine:asset_manager/artifact/data/new/set_to_current
# 神器側に受け渡し
    function #asset:artifact/tick
# イベント発火後に実行するやつ
    function blessing_engine:asset_manager/artifact/data/new/revert_from_current
