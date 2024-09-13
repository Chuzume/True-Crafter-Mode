#> true_crafter_mode:personal_storage/test
#
# テスト処理
#
# @within function true_crafter_mode:personal_storage/please

#
    data modify storage personal_storage: Storage.Item.Hand set from entity @s HandItems[0]

# 書き込み
    function true_crafter_mode:personal_storage/write
    