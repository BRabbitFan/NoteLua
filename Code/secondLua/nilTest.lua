tab1 = {key1 = "val1", key2 = "val2"}
for k, v in pairs(tab1) do
  print(k .. " - " .. v)
end
-- 使用赋值nil删除变量
tab1.key1 = nil
for k, v in pairs(tab1) do
  print(k .. " - " .. v)
end