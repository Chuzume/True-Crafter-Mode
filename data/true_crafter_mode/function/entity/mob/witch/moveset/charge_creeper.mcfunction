#> true_crafter_mode:entity/mob/witch/moveset/charge_creeper
#
# クリーパーを帯電させる
#
# @within function true_crafter_mode:entity/mob/witch/moveset/main

# 演出
    particle enchanted_hit ~ ~0.5 ~ 0.25 0.5 0.25 0 25
    playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 1 2

# 対象のデータ置き換え
    data modify entity @s powered set value 1b