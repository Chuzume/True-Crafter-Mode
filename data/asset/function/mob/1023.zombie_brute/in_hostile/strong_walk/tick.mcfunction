#> asset:mob/1023.zombie_brute/in_hostile/strong_walk/tick
#
# 
#
# @within function asset:mob/1023.zombie_brute/in_hostile/

# 演出
    particle minecraft:trial_spawner_detection ~ ~1 ~ 0.3 0.5 0.3 0 1

# 壁壊す
    execute rotated ~ 0 positioned ^ ^ ^1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute rotated ~ 0 positioned ^ ^1 ^1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute rotated ~ 0 positioned ^ ^2 ^1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy

    execute rotated ~ 0 positioned ^1 ^ ^1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute rotated ~ 0 positioned ^1 ^1 ^1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute rotated ~ 0 positioned ^1 ^2 ^1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy

    execute rotated ~ 0 positioned ^-1 ^ ^1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute rotated ~ 0 positioned ^-1 ^1 ^1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute rotated ~ 0 positioned ^-1 ^2 ^1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
