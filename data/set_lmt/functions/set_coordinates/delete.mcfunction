#> set_lmt:set_coordinates/delete
#
# @input storage set_lmt.__temp__:set_coordinates __io__
#   lmt : lmt object
#   data : coordinates [x, y, z]
# @output storage set_lmt.__temp__:set_coordinates __io__
#   lmt : lmt object
#
# @public

# 引数の指定
  data modify storage set_lmt.__temp__:lib/lmt_hash __io__.lmt set from storage set_lmt.__temp__:set_coordinates __io__.lmt
  data modify storage set_lmt.__temp__:lib/lmt_hash __io__.data set from storage set_lmt.__temp__:set_coordinates __io__.data
  execute store result storage set_lmt.__temp__:lib/lmt_hash __io__.hash_func_val int 1.0 run function set_lmt:set_coordinates/hash_func

# 実行
  function set_lmt:lib/lmt_hash/delete

# 実行結果の保存
  data modify storage set_lmt.__temp__:set_coordinates __io__.lmt set from storage set_lmt.__temp__:lib/lmt_hash __io__.lmt
