local tab1 = {1, 2, 3}
tab1[2] = nil
print(#tab1) --> 3 , 这里 用整数作为索引的最开始连续部分是1:1 3:3 ,最大索引是3
local tab2 = {k1 = "a", 1, k2 = "1"}
print(#tab2) --> 1 , 这里 用整数作为索引的最开始连续部分是1:1 , 最大索引是1