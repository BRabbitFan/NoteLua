print(type(true))
print(type(false))
print(type(nil))
-- 测试nil的boolean值
if false or nil then
  print("至少有一个是true")
else
  print("false和nil都是false")
end
-- 测试0的boolean值
if 0 then
  print("0是true")
else
  print("0是false")
end