local function iter(tab)   -- 实现迭代器
  local x = 0              -- 闭合函数 的 非局部变量 (虽然在 function 外 , 但它是 closure 的一部分)
  return function ()       -- 闭合函数 closure 
    x = x + 1
    return tab[x]
  end
end
local tab = {1, 2, 3, 4, 5}
local tabIter = iter(tab)  -- 获取迭代器
for value in tabIter do    -- 使用迭代器
  print(value)
end