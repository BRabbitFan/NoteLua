local tab = {1, 2, k1=3, 4, 5, 6}
tab[4] = nil                      -- 删除元素 4:5
print("pairs-----")
for key, value in pairs(tab) do   -- 遍历所有元素, 包括 k1:3 和 5:6
  print(key .. " " .. value)      --> 1 1 \n 2 2 \n 3 4 \n 5 6 \n k1 3
end
print("ipairs----")
for key, value in ipairs(tab) do  -- 只遍历第一个nil索引之前以数字为索引的元素
  print(key .. " " .. value)      --> 1 1 \n 2 2 \n 3 4
end