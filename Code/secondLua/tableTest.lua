-- 创建一个空table
tbl1 = {}
-- 创建一个table并初始化
tbl2 = {1, 2, 3}
-- 创建一个table , 并进行赋值操作 , 修改值操作 , 遍历输出操作
a = {1, 2, 'var'}
a["key"] = "value"
key = 10
a[key] = 22
a[key] = a[key] + 11
for k, v in pairs(a) do
  print(k .. ":" .. v)
end