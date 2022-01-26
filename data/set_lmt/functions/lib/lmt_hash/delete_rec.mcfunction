#> set_lmt:lib/lmt_hash/delete_rec
# @within set_lmt:lib/lmt_hash/delete*

#
  data modify storage set_lmt.__temp__:lib/lmt_hash __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append from storage set_lmt.__temp__:lib/lmt_hash __temp__.cache[-1]
  execute store success score $t0 set_lmt.temp run data modify storage set_lmt.__temp__:lib/lmt_hash __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-1] set from storage set_lmt.__temp__:lib/lmt_hash __io__.data
  execute if score $t0 set_lmt.temp matches 1 run data modify storage set_lmt.__temp__:lib/lmt_hash __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-1] set from storage set_lmt.__temp__:lib/lmt_hash __temp__.cache[-1]
  execute if score $t0 set_lmt.temp matches 0 run data remove storage set_lmt.__temp__:lib/lmt_hash __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-1]
  data remove storage set_lmt.__temp__:lib/lmt_hash __temp__.cache[-1]

#
  execute if data storage set_lmt.__temp__:lib/lmt_hash __temp__.cache[-1] run function set_lmt:lib/lmt_hash/delete_rec