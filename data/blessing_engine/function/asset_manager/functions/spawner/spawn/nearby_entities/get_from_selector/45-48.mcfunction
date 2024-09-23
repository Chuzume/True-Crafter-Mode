#> blessing_engine:asset_manager/spawner/spawn/nearby_entities/get_from_selector/45-48
#
# SpawnRangeを二分探索する
#
# @within function blessing_engine:asset_manager/spawner/spawn/nearby_entities/get_from_selector/41-48

execute if score $SpawnRange Temporary matches ..460 run function blessing_engine:asset_manager/spawner/spawn/nearby_entities/get_from_selector/45-46
execute if score $SpawnRange Temporary matches 470.. run function blessing_engine:asset_manager/spawner/spawn/nearby_entities/get_from_selector/47-48
