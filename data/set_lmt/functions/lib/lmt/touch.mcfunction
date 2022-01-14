#> set_lmt:lib/lmt/touch
#
# @input storage set_lmt.__temp__:lib/lmt __io__
#   lmt : lmt object
#   index : int
# @output storage set_lmt.__temp__:lib/lmt __io__
#   lmt : lmt object
#
# @internal

# debug
  #tellraw @a ["lmt/touch @input\n","  lmt: ",{"nbt":"__io__.lmt","storage": "set_lmt.__temp__:lib/lmt"},"\n  index: ",{"nbt":"__io__.index","storage": "set_lmt.__temp__:lib/lmt"}]

#
  execute store success score $t0 set_lmt.temp unless data storage set_lmt.__temp__:lib/lmt __io__.lmt._[]
  execute if score $t0 set_lmt.temp matches 0 store success score $t0 set_lmt.temp run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._index set from storage set_lmt.__temp__:lib/lmt __io__.index
  execute if score $t0 set_lmt.temp matches 1 run function set_lmt:lib/lmt/_touch
