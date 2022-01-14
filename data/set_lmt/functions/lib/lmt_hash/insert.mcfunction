#> set_lmt:lib/lmt_hash/insert
#
# @input storage set_lmt.__temp__:lib/lmt_hash __io__
#   hash_func_val : int
#     ハッシュ関数の値
#   data : any
#     該当データ
#   lmt : set_lmt.__temp__:lib/lmt __io__.lmt
#     lmt object
# @output storage set_lmt.__temp__:lib/lmt_hash __io__
#   is_element : byte
#   lmt : lmt object
#
# @internal

#
  function set_lmt:lib/lmt_hash/is_element

#
  execute if data storage set_lmt.__temp__:lib/lmt_hash {__io__:{is_element:false}} run data modify storage set_lmt.__temp__:lib/lmt_hash __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append from storage set_lmt.__temp__:lib/lmt_hash __io__.data
