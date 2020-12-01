local metaTab = {}  -- 构造元表
metaTab.__tostring = function(myTable)  -- 实现__tostring元方法 , 参数为表自身
  local str = "{ "                       -- 将表中内容转为字符串格式
  for key, value in pairs(myTable) do
    str = str .. key .. ":" .. value .. " "
  end
  str = str .. "}"
  return str
end
local tab = {1, 2, 3, 4, 5}
setmetatable(tab, metaTab)              -- 设置元表
print(tab)                              -- 像string一样输出表  --> { 1:1 2:2 3:3 4:4 5:5 }