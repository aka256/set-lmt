#> set_lmt:lib/lmt_hash/_index
#
# lmtをハッシュテーブルとして利用したもの
# 特徴は以下のようになる
#
# - オープンハッシュである
# - keyは32bit
# - 1つのkeyに対し衝突が多くなるとパフォーマンスが落ちる
#
# method
# 
# - insert
# - delete
# - is_element
#
# @private

#>
# @internal
#declare storage set_lmt.__temp__:lib/lmt_hash
