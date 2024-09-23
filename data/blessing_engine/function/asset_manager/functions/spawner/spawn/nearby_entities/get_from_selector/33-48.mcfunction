#> blessing_engine:asset_manager/spawner/spawn/nearby_entities/get_from_selector/33-48
#
# SpawnRangeを二分探索する
#
# @within function blessing_engine:asset_manager/spawner/spawn/nearby_entities/get_from_selector/33-64

execute if score $SpawnRange Temporary matches ..400 run function blessing_engine:asset_manager/spawner/spawn/nearby_entities/get_from_selector/33-40
execute if score $SpawnRange Temporary matches 410.. run function blessing_engine:asset_manager/spawner/spawn/nearby_entities/get_from_selector/41-48
