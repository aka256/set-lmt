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
  data modify storage set_lmt.__temp__:lib/lmt_hash __temp__.cache set from storage set_lmt.__temp__:lib/lmt_hash __io__.lmt.cache
  execute store result score $t0 set_lmt.temp run data modify storage set_lmt.__temp__:lib/lmt_hash __temp__.cache[] set from storage set_lmt.__temp__:lib/lmt_hash __io__.data
  execute store result score $t1 set_lmt.temp if data storage set_lmt.__temp__:lib/lmt_hash __temp__.cache[]
  execute store success storage set_lmt.__temp__:lib/lmt_hash __io__.is_element byte 1.0 unless score $t0 set_lmt.temp = $t1 set_lmt.temp
