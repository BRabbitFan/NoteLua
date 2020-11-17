a, b = 1, 2     -- 给多个变量赋值
print(a, b)     --> 1 2
a, b = b, a     -- 交换变量的值
print(a, b)     --> 2 1
a, b, c = 0, 0  -- 变量个数 > 值的个数
d, e = 1, 2, 3  -- 变量个数 < 值的个数
print(a, b, c)  --> 0 0 nil
print(d, e)     --> 1 2