#> set_lmt:set_int/is_element
#
# @input storage set_lmt.__temp__:set_int __io__
#   lmt : lmt object
#   data : int
# @output storage set_lmt.__temp__:set_int __io__
#   is_element : byte
#
# @public

# 引数の指定
  data modify storage set_lmt.__temp__:lib/lmt_hash __io__.lmt set from storage set_lmt.__temp__:set_int __io__.lmt
  data modify storage set_lmt.__temp__:lib/lmt_hash __io__.data set from storage set_lmt.__temp__:set_int __io__.data
  data modify storage set_lmt.__temp__:lib/lmt_hash __io__.hash_func_val set from storage set_lmt.__temp__:set_int __io__.data

# 実行
  function set_lmt:lib/lmt_hash/is_element

# 実行結果の保存
  data modify storage set_lmt.__temp__:set_int __io__.is_element set from storage set_lmt.__temp__:lib/lmt_hash __io__.is_element
