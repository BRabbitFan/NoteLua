print(type(true))
print(type(false))
print(type(nil))
-- ����nil��booleanֵ
if false or nil then
  print("������һ����true")
else
  print("false��nil����false")
end
-- ����0��booleanֵ
if 0 then
  print("0��true")
else
  print("0��false")
end