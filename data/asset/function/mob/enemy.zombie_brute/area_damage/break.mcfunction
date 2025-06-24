#> asset:mob/enemy.zombie_brute/area_damage/break
#
# ブロック破壊
#
# @within function asset:mob/enemy.zombie_brute/area_damage/

    execute positioned ~ ~ ~ unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ~ ~1 ~ unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ~ ~2 ~ unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy

    execute positioned ~1 ~ ~ unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ~1 ~1 ~ unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ~1 ~2 ~ unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy

    execute positioned ~-1 ~ ~ unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ~-1 ~1 ~ unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ~-1 ~2 ~ unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy

    execute positioned ~ ~ ~1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ~ ~1 ~1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ~ ~2 ~1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy

    execute positioned ~1 ~ ~1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ~1 ~1 ~1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ~1 ~2 ~1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy

    execute positioned ~-1 ~ ~1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ~-1 ~1 ~1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ~-1 ~2 ~1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy

    execute positioned ~ ~ ~-1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ~ ~1 ~-1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ~ ~2 ~-1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy

    execute positioned ~1 ~ ~-1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ~1 ~1 ~-1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ~1 ~2 ~-1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy

    execute positioned ~-1 ~ ~-1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ~-1 ~1 ~-1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
    execute positioned ~-1 ~2 ~-1 unless block ~ ~ ~ #lib:unbreakable run setblock ~ ~ ~ air destroy
