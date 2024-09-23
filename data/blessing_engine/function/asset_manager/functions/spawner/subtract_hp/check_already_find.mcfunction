#> blessing_engine:asset_manager/spawner/subtract_hp/check_already_find
#
# 既にスポナーが見つかっているかをチェックする
#
# @within function blessing_engine:asset_manager/spawner/subtract_hp/

execute unless data storage asset:spawner {AlreadyFind:true} run function blessing_engine:asset_manager/spawner/subtract_hp/check_id
