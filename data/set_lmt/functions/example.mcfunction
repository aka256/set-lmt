#> set_lmt:example
# @user

# 初期化
  data modify storage set_lmt.__temp__:set_3d-vec __io__.lmt set from storage set_lmt:lib/lmt init_obj

# 挿入:[0, 0, 0]
  data modify storage set_lmt.__temp__:set_3d-vec __io__.data set value [0, 0, 0]
  function set_lmt:set_3d-vec/insert

# 挿入:[1, 1, 1]
  data modify storage set_lmt.__temp__:set_3d-vec __io__.data set value [1, 1, 1]
  function set_lmt:set_3d-vec/insert

# 要素の検索: [0, 0, 0]
  data modify storage set_lmt.__temp__:set_3d-vec __io__.data set value [0, 0, 0]
  function set_lmt:set_3d-vec/is_element
  tellraw @a [{"nbt":"__io__.data","storage": "set_lmt.__temp__:set_3d-vec"}," is element: ",{"nbt":"__io__.is_element","storage": "set_lmt.__temp__:set_3d-vec"}]
  # => [0,0,0] is element: 1b

# 削除:[0, 0, 0]
  data modify storage set_lmt.__temp__:set_3d-vec __io__.data set value [0, 0, 0]
  function set_lmt:set_3d-vec/delete

# 要素の検索: [0, 0, 0]
  data modify storage set_lmt.__temp__:set_3d-vec __io__.data set value [0, 0, 0]
  function set_lmt:set_3d-vec/is_element
  tellraw @a [{"nbt":"__io__.data","storage": "set_lmt.__temp__:set_3d-vec"}," is element: ",{"nbt":"__io__.is_element","storage": "set_lmt.__temp__:set_3d-vec"}]
  # => [0,0,0] is element: 0b