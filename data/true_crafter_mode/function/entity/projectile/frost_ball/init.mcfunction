#> true_crafter_mode:entity/projectile/frost_ball/init
#
# 
#
# @within function true_crafter_mode:entity/mob/skeleton/moveset/elite/stray/shoot

# Motion関連
    # 持ち主が召喚したマーカーを狙う
        execute facing entity @n[type=marker,tag=TMCM.Marker.Aim] eyes run tp @s ~ ~ ~ ~ ~
    # 最初にちょっと飛ばしてMotionの初期値を取得
        scoreboard players set @s Chuz.Speed 1
        function true_crafter_mode:entity/motion
        function true_crafter_mode:api/colide_check/get_first_motion
    # マーカーキル
        kill @n[type=marker,tag=TMCM.Marker.Aim]

# オーナーを記録
    # 記録用AECを召喚
        summon minecraft:area_effect_cloud ~ ~ ~ {Duration:-1,Age:-2147483648,WaitTime:-2147483648}
    # AECのオーナーを発射元にする
        data modify entity @n[type=area_effect_cloud] Owner set from entity @n[tag=This,distance=..100] UUID
    # 自分の上に乗せる
        ride @n[type=area_effect_cloud] mount @s
    # 個人ストレージ呼び出し
        #function oh_my_dat:please
    # オーナーのUUIDを入れる
        #data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Owner set from entity @n[tag=This] UUID

# Init完了
    tag @s remove Chuz.Init
