-- 数组测试
local array = {"Lua", "array", "test"}  -- 创建数组
local lineStr = ""
for i = 1, 3 do                         -- 遍历数组
  lineStr = lineStr .. array[i] .. " "  -- 通过下表取得元素
end
print(lineStr)
-- 多维数组测试
local multiArray = {{1, 2, 3},          -- 创建三维数组
                    {4, 5, 6},
                    {7, 8, 9}}
for i = 1, 3 do                         -- 遍历并输出三维数组
  local lineStr = ""
  for j = 1, 3 do
    lineStr = lineStr .. multiArray[i][j] .. " "
  end
  print(lineStr)
end
print(#multiArray)                      -- 输出多维数组的行数