#> asset:mob/1028.wither_minion/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/1028/init

# 頭装備
    item replace entity @s armor.head with netherite_helmet[trim={material:"minecraft:quartz",pattern:"minecraft:rib"}] 1
# メインハンド装備
    item replace entity @s weapon.mainhand with netherite_sword

# ステータス
    data modify entity @s CustomName set value '{"fallback":"ウィザーのしもべ","translate":"entity.true_crafter_mode.wither_minion"}'
    attribute @s minecraft:step_height base set 1
    attribute @s scale base set 0.85

# チーム設定
    team join TrueCrafterEnemy
