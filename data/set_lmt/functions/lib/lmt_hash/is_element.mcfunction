#> set_lmt:lib/lmt_hash/is_element
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
#   lmt : set_lmt.__temp__:lib/lmt __io__.lmt
#     lmt object
#
# @internal

#
  data modify storage set_lmt.__temp__:lib/lmt __io__.index set from storage set_lmt.__temp__:lib/lmt_hash __io__.hash_func_val
  data modify storage set_lmt.__temp__:lib/lmt __io__.lmt set from storage set_lmt.__temp__:lib/lmt_hash __io__.lmt
  function set_lmt:lib/lmt/touch
  data modify storage set_lmt.__temp__:lib/lmt_hash __io__.lmt set from storage set_lmt.__temp__:lib/lmt __io__.lmt

#
  data modify storage set_lmt.__temp__:lib/lmt_hash __temp__.match_list set value []
  data modify storage set_lmt.__temp__:lib/lmt_hash __temp__.match_list set from storage set_lmt.__temp__:lib/lmt_hash __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2]
  data modify storage set_lmt.__temp__:lib/lmt_hash __io__.is_element set value 0b
  function set_lmt:lib/lmt_hash/is_element_rec
