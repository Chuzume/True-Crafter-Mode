#> asset_manager:mob/summon/summon.m
#
# 与えられたIDを使ってエイリアスを実行
#
# @within function asset_manager:mob/summon/

$function asset:mob/$(id)/summon/
$execute store success storage asset:mob Implement byte 1 run schedule function asset:mob/$(id)/summon/ 2147483647t
$schedule clear asset:mob/$(id)/summon/
