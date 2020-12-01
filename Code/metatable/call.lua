local meteTab = {}                       -- 构造元表
meteTab.__call = function(mytable, ...)  -- 实现方法__call , 第一个参数是自身
  return {...}                           -- 返回以所有参数作为索引的表
end
local tab = {1, 2, 3, 4, 5}
setmetatable(tab, meteTab)               -- 设置元表
local resTab = tab(2, 3, 4)              -- 以函数的方式调用表
for key, value in pairs(resTab) do       -- 循环输出  --> 1 2 \n 2 3 \n 3 4
  print(key .. " " .. value)
end