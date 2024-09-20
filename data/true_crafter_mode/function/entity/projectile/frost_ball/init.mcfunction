#> true_crafter_mode:entity/projectile/frost_ball/init
#
# 
#
# @within function true_crafter_mode:entity/mob/skeleton/moveset/elite/stray/shoot

# Motion関連
    # 持ち主が召喚したマーカーを狙う
        execute facing entity @n[type=marker,tag=TMCM.Marker.Aim] eyes run tp @s ~ ~ ~ ~ ~
    # 最初にちょっと飛ばしてMotionの初期値を取得
        scoreboard players set @s Chuz.Speed 10
        function true_crafter_mode:entity/motion
        function true_crafter_mode:api/collide_check/get_first_motion
        data modify storage chuz:storage test set from entity @s Motion
        # マーカーキル
        kill @n[type=marker,tag=TMCM.Marker.Aim]

# 乗ってるItem_Displayの向きを自分と同じに
    data modify entity @n[type=item_display] Rotation set from entity @s Rotation

# オーナーを記録
    # 記録用AECを召喚
        summon minecraft:area_effect_cloud ~ ~ ~ {Duration:-1,Age:-2147483648,WaitTime:-2147483648}
    # AECのオーナーを発射元にする
        data modify entity @n[type=area_effect_cloud] Owner set from entity @n[tag=This,distance=..100] UUID
    # 自分の上に乗せる
        ride @n[type=area_effect_cloud] mount @s

# Init完了
    tag @s remove Chuz.Init
