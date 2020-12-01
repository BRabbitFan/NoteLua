local metaTab = {}                            -- 创建元表
metaTab.__add = function (leftTab, rightTab)  -- 定义元方法__add
  local addTab = {}
  for key, value in ipairs(leftTab) do        -- 对应索引的元素相加
    addTab[key] = value + rightTab[key]
  end
  return addTab                               -- 返回相加后的表
end
local tab1 = {1, 2, 3}
local tab2 = {4, 5, 6}
setmetatable(tab1, metaTab)                   -- 设置元表
setmetatable(tab2, metaTab)
local resTab = tab1 + tab2                    -- 对表进行加法运算
for key, value in pairs(resTab) do            -- 遍历输出  --> 1 5 \n 2 7 \n 3 9
  print(key .. " " .. value)
end