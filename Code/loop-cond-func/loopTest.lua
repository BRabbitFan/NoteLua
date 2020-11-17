---------- while ----------
print("while--------")
a = 1
while(a < 4) do
  print("a:", a)
  a = a + 1
end
---------- for ----------
print("for----------")
x = 3
for i = 1, x do
  x = x - 1
  i = i + 1
  print(x, i)
end
---------- repeat-until ----------
print("repeat-until-")
a = 1
repeat
  print("a:", a)
  a = a + 1
  if a == 3 then
    break
  end
until(a > 3)
---------- goto ----------
print("goto---------")
for i = 1, 10, 2 do
  if i <= 8 then
    goto continue
  end
  print("i:", i)
  ::continue::
end