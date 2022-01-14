#> set_lmt:lib/lmt_hash/is_element_rec
# @within set_lmt:lib/lmt_hash/is_element*

#
  execute store result score $t1 set_lmt.temp if data storage set_lmt.__temp__:lib/lmt_hash __temp__.match_list[]
  execute store success score $t0 set_lmt.temp run data modify storage set_lmt.__temp__:lib/lmt_hash __temp__.match_list[-1] set from storage set_lmt.__temp__:lib/lmt_hash __io__.data
  execute if score $t0 set_lmt.temp matches 0 unless score $t1 set_lmt.temp matches 0 run data modify storage set_lmt.__temp__:lib/lmt_hash __io__.is_element set value 1b

#
  execute if score $t1 set_lmt.temp matches 1.. run data remove storage set_lmt.__temp__:lib/lmt_hash __temp__.match_list[-1]
  execute if score $t1 set_lmt.temp matches 1.. if data storage set_lmt.__temp__:lib/lmt_hash {__io__:{is_element:false}} run function set_lmt:lib/lmt_hash/is_element_rec
