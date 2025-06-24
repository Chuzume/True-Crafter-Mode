#> core:tick/player/post
#
# tickの基本的な処理を終えた後に実行されるプレイヤーのtick処理
#
# @within function core:tick/

# thisタグ付与
    tag @s add this

# リセット
#    execute if entity @s[scores={Sneak=1..},predicate=!lib:is_sneaking] run function asset_manager:artifact/triggers/sneak/reset
#    scoreboard players reset @s[scores={Sneak=1..},predicate=!lib:is_sneaking] Sneak
#    tag @s remove FlyingElytra
    scoreboard players reset @s DeathEvent
    tag @s remove this
