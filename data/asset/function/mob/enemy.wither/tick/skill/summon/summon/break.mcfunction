#> asset:mob/enemy.wither/tick/skill/summon/summon/break
#
# 
#
# @within function asset:mob/enemy.wither/tick/skill/summon/summon/

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
