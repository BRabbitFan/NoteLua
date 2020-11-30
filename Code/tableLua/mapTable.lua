local map = {}       -- 创建字典
map.key1 = "value1"  -- 向字典中插入键值对
map.key2 = "value2"
map.key3 = "value3"
for key, value in pairs(map) do  -- 遍历输出键值对
  print(key .. " : " .. value)
end