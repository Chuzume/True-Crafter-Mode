#> personal_storage:test
#
# テスト処理
#
# @within function personal_storage:please

#
    data modify storage personal_storage: Storage.Item.Hand set from entity @s HandItems[0]

# 書き込み
    function personal_storage:write
    