local function iter(tab, idx)    -- 迭代器定义
  idx = idx + 1
  local val = tab[idx]
  if val then
    return idx, val
  end
end
local function pairs(tab)        -- 包装器定义
  return iter, tab, 0            -- 迭代器函数iter , 恒定状态tab , 控制变量初始值0
end
local tab = {1, 2, 3, 4, 5}
for key, value in pairs(tab) do  -- 使用迭代器  --> 1 1 \n 2 2 \n 3 3 \n 4 4 \n 5 5 \n
  print(key .. " " .. value)
end