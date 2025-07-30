#> asset:mob/enemy.wither_minion/init/
#
# Mobのinit時の処理
#
# @within asset_manager:object/init/init.m

# メインハンド装備
    item replace entity @s weapon.mainhand with netherite_sword

# ステータス
    data modify entity @s CustomName set value {"fallback":"ウィザーのしもべ","translate":"entity.true_crafter_mode.wither_minion"}
    attribute @s minecraft:step_height base set 1
    attribute @s scale base set 0.85

# ドロップ無効化(頭を取られると困る)
    data modify entity @s drop_chances.head set value 0.0

# ふわりと降りてくる
    effect give @s slow_falling 2
    effect give @s slowness 2 0
    effect give @s weakness 2 10

# チーム設定
    team join TrueCrafterEnemy
