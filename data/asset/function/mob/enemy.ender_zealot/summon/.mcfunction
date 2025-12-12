#> asset:mob/enemy.ender_zealot/summon/
#
# Mob召喚処理の呼び出し時の処理のエイリアス
#
# @within asset_manager:mob/summon/summon.m

# 元となるEntityを召喚する
    summon slime ~ ~ ~ {Silent:1b,DeathTime:19,DeathLootTable:"minecraft:entities/enderman",NoAI:1b,Size:0,Tags:["MobInit","AlwaysInvisible","SlimeHitBox"],attributes:[{id:"minecraft:scale",base:2}]}
