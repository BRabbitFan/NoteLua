local file                       -- 句柄

file = io.open("test.txt", "w")  -- 打开文件 (写模式)
io.output(file)                  -- 设置该文件为默认输出文件
io.write("test text")            -- 写入数据 (写到文件里)
io.close(file)                   -- 关闭文件

file = io.open("test.txt", "r")  -- 打开文件 (读模式)
io.input(file)                   -- 设置该文件为默认输入文件
print(io.read("*a"))             -- 读取数据 (全部数据) --> test text
io.close(file)                   -- 关闭文件

io.output(io.stdout)             -- 设置标准输出为默认输出文件
io.write("std out test")         -- 写入数据 (写入到stdout - 打印)  --> std out test