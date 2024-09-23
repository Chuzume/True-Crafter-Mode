#> blessing_engine:asset_manager/spawner/register/process_spawn_potentials/from_int_list/
#
# SpawnPotentialsを正規化しWeightのSumを計算する
#
# @within function blessing_engine:asset_manager/spawner/register/process_spawn_potentials/

execute store result score $SpawnPotentialsWeightSum Temporary if data storage asset:spawner SpawnPotentials[]
data modify storage asset:spawner NormalizedSpawnPotentials set value []
function blessing_engine:asset_manager/spawner/register/process_spawn_potentials/from_int_list/for_each
