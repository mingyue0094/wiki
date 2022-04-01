# 一、Python

------

## 输出
>  **print 函数信息输出**
>  - 连接符号 **`+`**  2边都需要是字符串格式。
>  - 连接符号  **`,`**  中间是用空格连接起来的。
>  - 乘法符号  **`*`**  重复输出字符串的。
>  - 格式化输出  **`format`** 、**`%`**
   
### 1.  ` + ` 连接  
输出效果

123456

>```py
>print("123"+"456")
>```
>

### 2.  ` , ` 连接 

输出效果

123 456

>```py
>print("123","456")
>```
>


### 3.  ` * ` 连接

输出效果
ABCABCABCABC

>```py
>print("ABC"*3)     #打印ABC  3遍
>```
>

    
### 4.  `format` 、 `%` 格式化

输出效果 

甲成绩100，第一名

乙成绩98，第二名

丙成绩98，第三名

丁成绩95,第四名

    
>```py
>print("{}成绩{}，第{}名".format("甲","100","一"))    #甲成绩100，第一名
>print("{}成绩{}，第{}名".format("乙","98","二"))     #乙成绩98，第二名
>a = "丙"
>b = "97"
>c = "三"
>print(f"{a}成绩{b}，第{c}名")                        #丙成绩98，第三名
>
>print("%s成绩%s,第%s名"%("丁",95,"四"))              #丁成绩95,第四名
>
>```
>




### 5.  不换行处理（自定义结尾）

用 “ ” 代替结尾的自动换行符

输出效果 

123 456

789
    
>```py
>print("123",end="")    # 输出完123 用"" 内容结尾，不自动换行。
>print("456")           # 输出完456 自动用\n结尾，自动换行。
>print("789")           # 输出完789 自动用\n结尾，自动换行。
>```
>
    
------

## 输入
> **input 数据的输入**
> - 输入的数据是 `str` 字符串类型。
> - 可把输入数据赋值给变量，方便在其他部分使用输入的数据。
> - 需要对输入数据进行数学运算时，需要进行数据类型的转换。

### `input()` 
> **没提示语句**

### `input("请输入：")`
> **提示语是"请输入："**

------

## 变量
> - **变量可存放任意类型数据**
> - **变量命名规则**
> - **`type`查询变量类型**
> - **变量分类**
> - **变量类型转换**

### 1.命名规则
> 1. 不能数字开头
> 2. 可以是字母或者下划线组成
> 3. 区分大小写
> 4. 不能使用python关键字


### 2. 查看变量的数据类型
 
a = 123

查看a的数据类型

>```py
>a = 123
>print(type(a)) #type 查询  print 打印显示查询的结果
>```
>

------

## 数据类型

### 1. 常见变量分类
> - 1.数字 number
>   > - 整数 **int**
>   > - 浮点数 **float**
> - 2.字符串 **str**
> - 3.布尔值 **bool**
>   > - 真 **True**
>   > - 假 **False**
> - 4.**None** 什么都没，连空都不是。

### 2. 数据类型转换
 
>```py
>a = 123.78
>b = str(a)    # float =>  str    浮点数转字符串
>c = float(b)  # str   =>  float  字符串转浮点数
>d = int(c)    # float =>  int    浮点转整数，只取整数部分
>print("a是",a)
>print("a类型是",type(a))
>print("b是",b)
>print("b类型是",type(b))
>print("c是",c)
>print("c类型是",type(c))
>print("d是",d)
>print("d类型是",type(d))
>```
>


------

## 列表

 >```py
 ># ** 定义
 >L = [] # 定义1个空列表
 >
 >L2 = [1,2,3]   #定义1个有3个元素的列表
 >
 ># ** 增(加新元素)
 >L2.append(5)   # 在结尾添加元素 5
 >print(L2)      # 结果 L2 是 [1,2,3,5]
 >
 >L2.insert(2,6) # 在索引为2的位置，加入元素6，其他元素向后移动。 
 >print(L2)      # 结果 L2 是 [1,2,6,3,5]
 >
 ># ** 删(指定元素)
 >a=L2.pop()     # 把L2最后1个元素赋值给变量a,并删除列表L2最后1个元素。 
 >print(L2)      # 结果是 [1, 2, 6, 3]
 >print(a)       # 结果是 5
 >
 >L2.remove(6)   # 删除元素6
 >print(L2)       # 结果是 [1, 2, 3]
 >
 ># ** 查(元素的索引值)
 >b = L2.index(3)# 查询元素3的索引值，并把索引值赋值给变量b
 >print(b)       # 结果是 2 ，因为此时，L2 为 [1, 2, 3]
 >
 ># ** 取值(用索引取元素的值)
 >b = L2[1]      # 取列表L2中，索引为1的元素内容
 >print(b)       # 结果是 2
 >
 ># ** 改(列表内部的元素)
 >L2[1] = 7      # 把列表L2中，索引为1的元素内容重设为 7
 >print(L2)      # 结果是 [1, 7, 3]
 >
 ># ** 清空列表
 >L2 = []        # 再次赋值为空列表，等价于清空。
 >
 >
 ># ** 列表的复制
 >L3 = [2,3,4]
 ># L4 是列表L3的复制。使用copy函数后的复制，修改L4后，L3内容不变。
 >L4 = L3.copy() 
 >L4.remove(4)
 >print(L3)      # 结果是 [2,3,4]
 >print(L4)      # 结果是 [2,3]
 >
 >
 ># ** 列表的反转
 >L3.reverse()
 >print(L3)      # 结果是 [4, 3, 2] 
 >
 >
 >
 ># **随机取列表里面的1个元素
 >import random # 导入随机模块
 >print(random.choice(L3)) # 结果会是 [4, 3, 2]中随机的1个值; 随机列表元素
 >
 >print(random.randint(10,20)) # 随机 10 到20 的1个数字，包含10和20
 >
 >
 ># ** 取列表长度
 >print(len(L3))    #结果是3， len 取长度、个数、数量
 >
 >```
 >

------

## 字典
>```py
> # *** 定义1个字典
>a = {"名字":"刘备","战力":70,"智力":130,"军师":{"1号军师":"诸葛亮"}} 
>
>b = {} # 定义1个空字典
>
># *** 取字典key(键)为名字对应的value(值)
>xm = a["名字"] 
>print(xm)      #结果是 "刘备"
>
>yhjs = a["军师"]["1号军师"]
>print(yhjs) # 结果是 "诸葛亮"
>
># *** 增加 2号军师 庞统
>a["军师"]["2号军师"] = "庞统"
>print(a)
>#结果是 {'名字': '刘备', '战力': 70, '智力': 130, '军师': {'1号军师': '诸葛亮', '2号军师': '庞统'}}
>
># *** 删除
>del a["军师"]["1号军师"]
>print(a)
>#结果是 {'名字': '刘备', '战力': 70, '智力': 130, '军师': {'2号军师': '庞统'}}
>
># *** 复制
> b = a.copy()
>
># *** 清空方法1
>a.clear()
>
># *** 清空方法2
>a={}
>````
>

------


## 运算符号

- ### 数学运算符
> `+` 加
>
> `-` 减
>
> `*` 乘
>
> `/` 除
>
> `//` 地板除（求商）
>
> `%` 求余
>
> `**` 次幂； 如 5\*\*3 = 5x5x5 ; 5的3次方，3个5相乘。 


- ### 逻辑运算符
>  **`==`** 等于
>
>  **`!=`** 不等于
>
>  **`>`**  大于
>
>  **`>=`** 大于等于
>
>  **`<`**  小于
>
>  **`<=`** 小于等于
>
>  **`and`** 连接的多个条件都分别成立，结果才成立。
>
>  **`or`** 连接的多个条件中的任意一个成立，结果就成立。
>
>  **`not`** 后的条件不成立时，结果才成立。
>
>  运算时的优先级是： **`not`** > **`and`** > **`or`** 。
>
>  **`0`**表示**`False`**,其他**`非0`**表示**`True`** 。


------


## 判断语句

- ### 1.单分支

**只有条件成立才执行的情况** `可以省略else部分`

>
>```py
># 省略版
>a = 3 
>if a < 5:
>    print("执行事情一")
>
>
># 完整版
>a = 3 
>if a < 5:
>    print("执行事情一")
>else:
>    pass               # pass 占位符，没代码时，需要用占位符保持缩进的完整
>
>```
>

- ### 2. 双分支
**条件成立，执行事情一；条件不成立执行事情二**

>
>```py
>a = int(input("请输入任意数字：")) 
>if a < 5:
>    print("执行事情一")
>    print("输入的数字小于5")
>else:
>    print("执行事情二")
>    print("输入的数字不小于5")
>
>```
>


- ### 3. 多分支
 **条件①成立，执行事情a;不成立时，如果条件②成立，则执行事情b;不成立时，如果条件③成立，则执行事情c; ... 否则，说明条件都不成立，执行事情m**

>
>```py
>a = int(input("请输入任意数字：")) 
>if a > 100:
>    print("事情a")
>    print("输入大于100")
>
>elif a < 50:
>    print("事情b")
>    print("输入的小于50")
>
>elif a < 70:
>    print("事情c")
>    print("输入的小于70")
>
> ...
>
>else:
>    print("事情m")
>    print("输入的在50 ~ 100 之间")
>```
>


------


## 循环语句

- ### 1.`for` 遍历循环

**range** 

>```py
># x 从 0 开始赋值
>for x in range(5):
>    print(x)
>
>"""
># 输出结果
>0
>1
>2
>3
>4
>
>"""
>
>```
>
>
>```py
># x 从 5 开始赋值
>for x in range(5,9):
>    print(x)
>
>"""
># 输出结果
>5
>6
>7
>8
>
>"""
>
>```
>


**迭代list**

>```py
>
>#for遍历list
>L1 = ['Hello', 'World', 18, 'Apple', None]
>for i in L1:
>    print(i)
>
>"""
># 结果是
>Hello
>World
>18
>Apple
>None
>
>"""
>```
>



**迭代`str`**

>
>```
>abc = "321abc"
>for i in abc:
>    print(i)
>"""
># 结果是
>3
>2
>1
>a
>b
>c
>
>"""
>```
>

- ### 2. while 条件循环
**根据条件是否成立，决定是否保持循环**


>```py
># 1 是 真，True; 程序永远走不到 “结束”那句。
>z = 0
>while 1:
>    print(z)
>    z = z + 1
>
>print("结束!")
>```
>
>
>```py
># 条件循环 , z < 1000 成立才循环，不成立时，程序往下走。
>z = 0
>while z < 1000:
>    print(z)
>    z = z + 1
>
>print("结束!")
>
>```
>




------

## 程序结构

- ### 顺序结构
> 一行行的从上到下执行代码 ；没有循环和判断 。
>```py
>a = 3
>print(a)
>a = a + 3
>print(a)
>b = "aaa"
>print(b)
>
>```
>

- ### 选择结构
> 使用if语句的就是选择结构
>```py
>a = int(input("请输入任意数字：")) 
>if a > 100:
>    print("事情a")
>    print("输入大于100")
>
>elif a < 50:
>    print("事情b")
>    print("输入的小于50")
>
>
>else:
>    print("事情m")
>    print("输入的在50 ~ 100 之间")
>```
>
- ### 循环结构
> 循环代码块部分就是循环结构
>


------

## 函数

- ### 1.函数参数
>1.没有参数的函数
>```py
>def abc(): #定义
>    print(123)
>
>print(abc()) #调用并输出结果
>```
>
>
>2.有1个参数的函数
>```py
>def abc(x):#定义
>    print(x)
>    print(x+1)
>
>print(abc(5))#调用并输出结果
>
># 输出结果
>"""
>5
>6
>"""
>```
>
>
>3.有2个参数的函数
>```py
>def abc(x,y):#定义
>    print(x)
>    print(x+1)
>    print(y)
>print(abc(5,"你好"))#调用并输出结果
>
># 输出结果
>"""
>5
>6
>你好
>"""
>```
>


- ### 2.函数返回值
>```py
>def abc(x,y):#定义
>    print(x)
>    print(x+1)
>    print(y)
>    return (x+20)
>
>k = abc(5,"你好")
>print(k)#调用并输出结果
>
># 输出结果
>"""
>5
>6
>你好
>25
>"""
>```
>


- ### 3.全局变量
>```py
># 函数内部定义全局变量后，才可以修改函数外部的变量值。
>a = 3
>def king(x):
>    global a #定义 a 是全局变量
>    a = a + x
>    
>x = 5
>king(x)
>print(a)
>king(x)
>print(a)
>king(x)
>print(a)
>
>
>
>"""
># 输出结果
>8
>13
>18
>"""
>```
>


------

## 递归函数
> - 函数内部存在调用自身的函数，是递归函数
> - 递归函数有必须要有出口。
>
>```py
> # 计算阶乘的函数。n 的阶乘，写作 n! ，意思是 1*2*3*4*5* ... * n
>def xyz(a):
>    if a == 1:                     # 递归函数的出口
>        return 1
>    else:
>        return a*xyz(a-1)          #调用自身
>        
>b = 5
>c = xyz(b)
>print("5的阶乘是",c)               # 5的阶乘就是， 1*2*3*4*5
>
>```
>


------


## 模块
- **`内置模块`**
> `print`、`input` 等 不需要导入可直接使用的自带模块

- **`第三方模块`**
> 第三方开发的开源模块，一般可通过`pip install 模块名`的方式安装后，先导入后使用

- **`自定义模块`**
> 自己编写或者修改后的模块



- **导入模块**

`import 模块名` 的方式导入模块

>```py
>import turtle # 使用 import 模块名 的方式导入
>turtle.begin_fill()
>turtle.fillcolor('red')
>for x in range(5):
>    turtle.forward(100)
>    turtle.right(90)
>turtle.end_fill()
>turtle.hideturtle() #隐藏画笔
>turtle.done() # 进入循环，防止窗口关闭
>```
>
>



` from 模块名 import 函数名` 的方式导入函数

>
>```py
>from time import sleep  # from 模块名 import 函数名
>print("Hello World!")
>sleep(1)                # sleep for 1 second
>print("Hello World  2!")
>sleep(3)                # sleep for 3 seconds
>print("Hello World  3!")
>```
>

------

## 海龟模块

- 画板大小
- 画板颜色
- 画笔大小
- 画笔颜色
- 画笔填充颜色
- 画笔速度
- 画笔转向
- 画笔前进
- 画笔开始填充颜色
- 画笔结束填充颜色
- 画笔抬笔
- 画笔移动到坐标
- 画笔落笔
- 画笔画点
- 画笔画圆
- 画笔画弧
- 画笔写字
- 画笔接受输入数据
- 隐藏画笔
- 显示画笔
- 防止窗口关闭


**turtle基本用法**

>```py
># turtle基本用法
>import turtle
>
>turtle.Screen().setup(500,500)     # 设置画板大小
>#turtle.bgcolor("blue")            # 画板颜色
>t = turtle
>t.pensize(10)                      # 画笔大小
>t.pencolor("red")                  # 画笔颜色
>t.fillcolor("black")               # 填充颜色
>t.speed(2)                         # 速度 1最慢。速度是 0 >...> 5 > 4 > 1
>
>t.left(90)                         # 左转90度
>#t.right(90)                       # 右转 90度
>t.forward(50)                      # 画笔前进 50像素
>
>t.begin_fill()                     # 画笔开始填充颜色
>for x in range(3):
>    t.left(90)
>    t.forward(50)
>t.end_fill()                       # 画笔结束填充颜色
>t.up()                             # 画笔抬笔
>t.goto(70,-100)                    #画笔移动到坐标
>t.down()                           #画笔落笔
>t.forward(20)
>t.pensize(1)
>t.forward(40)
>t.dot(10)                          # 画笔画点 直径 10 像素
>t.circle(30)                       # 画笔画圆，半径 30 像素
>t.up()
>t.forward(-30)
>t.down()
>t.circle(20,90)                    #画笔画弧， 半径20，弧度是90度。
>t.write("hi", font=('Arial', 9))   #用大小为9号的字写内容 "hi"
>t.forward(50)
>t.hideturtle()                     #隐藏画笔
>b = t.textinput("标题","提示语")    #画笔接受输入数据
>t.write(b, font=('Arial', 9))      #用大小为9号的字写出变量b的内容
>t.showturtle()                     #显示画笔
>t.done()                           # 进入循环事件，防止窗口关闭
>
>```
>
>


**turtle进阶**

- 画笔形状

>
>```py
># 画笔形状
>import turtle
>pen = turtle.Turtle()      # 定义一个画笔
>pen.fillcolor("red")       # 设置画笔颜色
>pen.begin_poly()           # 开始多边形
>pen.begin_fill()           # 开始填充
>for i in range(4):
>    pen.forward(100)
>    pen.left(90)
>pen.end_fill()             # 结束填充
>pen.end_poly()             # 结束多边形
>
>jt = pen.get_poly()        # 获取多边形
>turtle.register_shape("my_shape", jt) # 注册多边形
>
>turtle.reset()             # 重置画笔
>pen.shape("my_shape")      # 设置画笔形状 ; 把画笔形状设置为刚绘制的多边形
>pen.color("blue")          # 设置画笔颜色
>pen.fd(200)                # 画笔前进200像素
>
>#canvas = turtle.getcanvas() # 获取画布
>#canvas.postscript(file="123test_tmp.eps") # 将画布显示的内容输出为eps文件
>
>turtle.done()              # 结束绘图
>
>
>


- 画笔面向方向

>
>```py
># 画笔面向方向
>import turtle
># 默认turtle.mode() = standard,表示逆时针方向,初始画笔方向向右;logo表示顺时针，初始画笔方向向上
>
>pen = turtle.Turtle() # 创建一个画笔
>pen.speed(1) # 设置画笔速度
># 默认是逆时针方向，初始画笔方向向右是0度，向上是90度。
>pen.setheading(20) # 逆时针旋转20度
>pen.forward(100)
>
>
>turtle.mode('logo') # 顺时针
>pen.setheading(225) # 顺时针旋转225。 向上面的方向是0度，向右面的方向是90度，向下面的方向是180度，向左面的方向是270度
>pen.forward(100)
>
>
>turtle.done()
>```
>


- 画笔绑定函数

>```py
># 画笔绑定函数
>import turtle
>
>def hs(x, y):
>    turtle.goto(x+20, y+20)
>    turtle.dot(30, "red")         # 画点
>
>pen = turtle.Pen()
>pen.onclick(hs)                   # 绑定函数hs, 当点击画布时调用hs函数, 并传入参数, 参数为点击的坐标.
>
>turtle.mainloop()
>
>```
>


## 颜色英文
>**red**    红
>
>**white**  白
>
>**black**  黑
>
>**green**  绿
>
>**yellow** 黄
>
>**blue**   蓝
>
>**purple** 紫
>
>**gray**   灰
>
>**brown**  棕
>
>**tan**    褐色
>
>**cyan**   青色
>
>

## 等差数列
> if语句的练习
 
- **公式**
 > 首项 a1
 > 末项 an
 > 公差 d
 > 项数 n
 > 数列之和 s
 >
 > d = an - a_(n-1) # 公差等于 后项减去前一项的差
 > 
 > an = a1 + (n-1)d
 >
 > n = (an - a1)÷d \+ 1
 >
 > s = (an + a1) x n  ÷ 2
 >
 >

- **相关代码**
>```py
>
>#输入首项 ，末项 ，公差或项数后，计算数列的和。
>print("请输入下列参数，不知道的输入0")
>a1=int(input("请输入首项"))
>an=int(input("请输入末项"))
>d=int(input("请输入公差"))
>n=int(input("请输入项数"))
>
>#计算等差数列的和
>if n!=0:
>    s=(a1+an)*n/2
>
>elif d!=0:
>    n = (an - a1) / d + 1
>    s =(a1+an)*n/2
>else:
>    s="输入错误"
>
>#输出等差数列的和
>print(s)
>
>
>```
>

## 乘法表
 > 循环语句的练习

 - ### 控制台 输出
 >```py
 >for x in range(1,10):
 >   #print(x)
 >   for y in range(1,x+1):
 >       #print(y)
 >       _a = " {} x {} = {}  ".format(x,y,x*y)
 >       print(_a,end="")
 >   print("\n")
 >
 >```
 >
 
 - ### 海龟画图 绘制
 >```py
 >import turtle
 >
 >p = turtle
 >p.speed(0)
 >
 >
 >def hk(x, y): # 根据框左上角坐标，画框，填充颜色
 >    # x,y 是框的左上角的坐标。
 >    # p = turtle.Pen()
 >    p.pu()  # 抬笔
 >    p.goto(x, y)
 >    p.pd()  # 落笔
 >    p.pensize(3.5)
 >    p.color("red")
 >    p.fillcolor("black")
 >    p.begin_fill()
 >    p.fd(50)
 >    p.rt(90)
 >    p.fd(20)
 >    p.rt(90)
 >    p.fd(50)
 >    p.rt(90)
 >    p.fd(20)
 >    p.rt(90)
 >    p.end_fill()
 >    p.pu()  # 抬笔
 >
 >
 >def w_txt(x, y, txt): #根据框左上角坐标，去框里写字。
 >    """
 >    :param x:  框x坐标
 >    :param y:  框y坐标
 >    :param txt: 要写出的 字符
 >    :return:
 >    """
 >    p.pu()  # penup
 >    p.goto(x + 5, y - 14)  # 到框要写字的位置
 >    p.pd()
 >    p.color("green")
 >    p.write(txt, font=('Arial', 9, 'normal'))  # 80 改字体大小
 >
 >
 >
 ># 左上角第1个框的 坐标， xx 是x坐标，yy是y坐标
 >xx = -180
 >yy = 180
 >
 >for x in range(1, 10):
 >    for m in range(1, x + 1):
 >        # print("{}x{}={} ".format(m,x,m*x),end="")
 >        xzb = xx + 55 * (m - 1)  # 计算当前框的左上角，x坐标、
 >        yzb = yy - 28 * (x - 1)  # 计算当前框的左上角，y坐标、
 >        # print(xzb,yzb)
 >        hk(xzb, yzb)  # 画框框
 >        txt = "{}x{}={} ".format(m, x, m * x)  # 拼接 要写的内容
 >        w_txt(xzb, yzb, txt)  # 调用写字函数
 >
 >turtle.Screen().exitonclick()
 >```
 >

 
## 成绩查询
 > 列表、字典的灵活运用
 
 - ### 列表查询
 >```py
 >#data 是列表变量, 元素排序顺序是按高到低的顺序排序的。
 >data = [["王小名",100],["刘小名",95],["张小名",89]] 
 >
 >a = int(input("你要查第几名的成绩？："))
 >print("第{}名的成绩是{}".format(a,data[a-1][1])) # 先取名次对应的元素，在取元素对应的成绩。 第1名，元素索引为0，所以a-1
 >
 >```
 >
 
 - ### 字典查询
 >```py
 >data2 = {"三好学生":{"第1名":70,"第2名":69},
 >         "特长学生":{"第1名":64,"第2名":65}}
 >
 >a = data2["特长学生"]["第2名"]
 >print(a)
 >
 >"""
 ># 结果是 
 >65
 >
 ># 先取到key为"特长学生"对应的数据。 然后在取到数据里面再取key为 "第2名" 对应的数据。
 >"""
 >```
 >

## 进制转换

- ### 内置转换
> - #### 1、 转10进制
>
> int("1101",2) #13 # 2进制到10进制转换
>
> int("00226",8) #150 #8进制到10进制转换
>
> int("96",16) #150 # 16进制到10进制的转换。
>
> - #### 2、 转2进制
>
> bin(0o45) # 8进制到2进制
>
> bin(45) # 10 => 2
>
> bin(0x45) # 16 => 2
>
> - #### 3、 转8进制
>
>oct(0b11011) # 2进制到8进制
>
>oct(45) # 10 => 8
>
>oct(0xAB) # 16 => 8
>
> - #### 4、 转16进制
>
>hex(0b1011101) # 2进制到16进制
>
>hex(45) # 10 => 16
>
>hex(0o721) # 8 => 16
>

- ### 前缀标识符号
>0b 二进制
>
>0o 八进制
>
>0x 十六进制
>

- ### 手动计算
- #### 1.a进制转 10 进制的
> 
> **位权公式** n是倒数第几位
> > a\*\*（n-1）
> 
> 
> 如： LMN 是 a 进制； 转10进制。
> 结果是：
>
>```tex
> = N*a^{1-1} + M * a^{2-1} + L * a^{3-1} \\
>
> = N*a^0 + M * a^1 + L * a^2
>``` 
>  
>  
>  
>  **例子1： 1010  是2进制，转10进制。**
>  
>```tex
>  =  0*2^{1-1} + 1 * 2^{2-1} + 0 * 2^{3-1} + 1 * 2^{4-1} \\
> 
>  =  0*1^0 + 1 * 2^1 + 0 * 2^2 + 1 * 2^3 \\
>
>  =  0 + 2 + 0 + 8
>  
>  =  10
>  
>```
>
>  **例子2： ABFC  是16进制，转10进制。**
>  
>```tex
>  =  12 *16^{1-1} + 15 * 16^{2-1} + 11 * 16^{3-1} + 10 * 16^{4-1} \\
>
>  =  12 * 1 + 15 * 16 + 11 * 16^2 + 10 * 16^3 \\
>  
>  =  12*1 + 15 * 16 + 11 * 256 + 10 * 4096 \\
>  
>  =  12 + 240 + 2816 + 40960 \\
>  
>  =  44028 \\
> 
>```
>
- #### 2.10进制到a进制
> 
> **计算公式**
> > 用除法，把 m 转为 a 进制，手动算 m/a 每一次的商对应的余数；当商为0时，从下到上的余数，就是结果左到右的顺序结果。
> 
>  **例子1： 200  是10进制，转16进制。**
>
>   200/16  商 12 ，192\*16=12 余 8 
>
>   12/16  商 0 ，12\*16=0 余 12 
>
>   16进制的结果是： （12）（8）
>
>   16进制表示符号是： c8
> 
> > **第1次用200为被除数，除以16,商12，余数为8。**
> >
> > **第2次用上次算的商12为被除数，除以16，商0, 余数为12。**
> >
> > **如果第2次的商不是0，继续用这个商，类推除下去。**
> >
> > **最后，最后的商是0时的余数是第一位，上一步的余数是第二位，上上一步的余数是第三位...**



 
 ## 冒泡、最值排序
 > if语句、循环的运用
 
- ### 冒泡排序
 >```py
 >a=[["张三",80],
 >   ["王明阳",82],
 >   ["李乐", 70],
 >   ["钱大宝", 100]
 >  ]
 >#print("原始数据是",a)
 >
 >def chengji_up(cj):
 >   for x in range(len(cj)-1):
 >       for i in range(len(cj)-1-x):
 >           if cj[i][1] < cj[i+1][1]:# 两两比较，左边 < 右边， 数据位置调换。 如此，最大的在列表最左边。
 >               cj[i],cj[i+1] = cj[i+1],cj[i]
 >   return cj
 >
 >b = chengji_up(a)
 >print("第1名是{},成绩是{}".format(b[0][0],b[0][1]))
 >
 >```
 >
 >
 
- ### 最值排序
 >```py
 >a = [2,3,5,7,1,3,5,7,0]
 >
 >b = []
 >for x in range(len(a)):
 >    #t = max(a)           # 每次都取剩下数据最大
 >    t = min(a)            # 每次都取剩下数据最小
 >    b.append(t)           # 结果放到新的列表
 >    a.remove(t)
 >print(b)                  # 排序后的数据。
 >
 >```
>

------

- ### 取最多次数出现字母
 >```py
 >
 >a = """
 >When I consider every thing that grows
 >Holds in perfection but a little moment.
 >That this huge stage presenteth nought but shows
 >Whereon the stars in secret influence comment.
 >When I perceive that men as plants increase,
 >Cheered and checked even by the self-same sky:
 >"""
 >
 ># repale 字符串替换 替换 空格 ， ： -  等非字母的内容为 没有
 >b = a.replace(" ","").replace("\n","").replace(",","").replace(":","").replace(".","").replace("-","")
 >
 >#print(b)
 >c = {}                    #用于放置每个字母和对应出现的次数。字母为key,字母对应的次数为value
 >for x in b:
 >    if c.get(x):          # 找到 key 为字母的，则次数 + 1
 >        c[x] = c[x]+1     # 次数 + 1 的意思
 >    else:
 >        c[x] = 1          # 没找到时，说明是第1个，次数赋值为1
 >
 >#print(c)                 # 显示 字典内容（调试和测试时用的。）
 >
 >c2 = tuple(c)             #  把 数据的 key 顺序固定下来。（字典内部数据，顺序是不固定的）
 >c3 = tuple(c.values())    #把 数据的value 顺序固定下来。（字典内部数据，顺序是不固定的）
 >
 >c4 = max(c3)              # 取 最大 value
 >c5  = c3.index(c4)        #取 最大 value 对应的索引。
 >
 >c6 =c2[c5]                #用索引取对应的 key ,即字母
 >
 >print("出现次数最多的字母是：",c6)
 >
 >"""
 ># 输出结果
 >
 >出现次数最多的字母是： e
 >
 >"""
 >
 >```
 >
 >
 >

------

 ## 文件读写
 
 - ### 1. 直接读写 `异常时无法正常关闭文件`
>  ```py
> file_name = "d:\\backup\\123.txt"     #绝对路径
> #file_name = "123.txt"                #相对路径
>
>
> ### 写
>
>f = open(file_name,"w",encoding="utf-8")
>f.write("112233")
>f.close()
>
>
> ### 读
>
>f = open(file_name,"r",encoding="utf-8")
>_s = f.read()
>f.close()
>print(_s)
>
>```
>



 - ### 2. with 语句 `异常时会自动关闭文件`
>```py
> file_name = "d:\\backup\\123.txt"     #绝对路径
> #file_name = "123.txt"                #相对路径
>
> ###写
>with open(file_name,"w",encoding="utf-8") as f:
>    f.write("112233")
>
>
> ### 读
>with open(file_name,"r",encoding="utf-8") as f:
>    _s = f.read()
>
>print(_s)
>
>```
>

 
------

 ## json 文件读写
> - JSON(JavaScript Object Notation, JS 对象简谱) 是一种轻量级的数据交换格式
>

### 写json文件

>```py
>import json
>
> file_name = "d:\\backup\\123.json"     #绝对路径
> #file_name = "123.json"                #相对路径
>
>### 写json文件
>
>
>_dic = {"a":5,"b":3,"c":1}
>
>with open(file_name,"w") as f:
>    json.dump(_dic, f) # 保存到文件
>    print("ok")
>
>```

### 读json文件

>```py
>import json
>
> file_name = "d:\\backup\\123.json"     #绝对路径
> #file_name = "123.json"                #相对路径
>
>### 读json文件
>
>with open(file_name) as f:
>    a = json.load(f)
>
>print(a) # json里面的数据
>
>
>```
>
------
 ## base64编码

>
>```py
># base64
>import base64
>_content = "这是个例子。"
>_c = _content.encode()         # 变二进制
>_c = base64.b64encode(_c)      # base64编码
>_c = _c.decode()  # bin转str   #OUT: '6L+Z5piv5Liq5L6L5a2Q44CC'
>print("base64编码后是：",_c)
>_c2 = base64.b64decode(_c)     # base64解码
>_c2 = _c2.decode()             # bin转str  #OUT: '这是个例子。'
>print("base64解码后是：",_c2)
>
>"""
># OUT:
>base64编码后是： 6L+Z5piv5Liq5L6L5a2Q44CC
>base64解码后是： 这是个例子。
>"""
>```
>


------
## class 类


- ### 定义类与调用类

>
>```py
>
>
># 定义类
>class Person():
>    def __init__(self, name, age): #类的初始化函数，在类被实例化的时候自动调用，可以在里面做一些初始化的工作。
>        self.name = name
>        self.age = age
>    def say(self):
>        print('My name is %s, I am %d years old.' % (self.name, self.age))
>
># 实例化类
>p = Person('Tom', 20)      # 实例化对象
>p.say()                    # 调用对象的方法
>
>
>
>"""
># 输出结果
>My name is Tom, I am 20 years old.
>"""
>
>
>```
>


- ### 类的继承




>
>```py
>
>
># 类的继承
>class A:
>    def __init__(self):
>        print('A')
>    def hsa(self):
>        print('A has a')
>    def he(self):
>        print('A he')
>
>
>class B(A):
>    def __init__(self):
>        print('B')
>        super().__init__()
>        print('BB')
>
>
>class C(A):
>    def __init__(self):
>        print('C')
>        super().__init__()
>        print('CC')
>
># 子类的继承
>class D(B,C):
>    def __init__(self):
>        print('D')
>        super().__init__()          # 先执行父类的构造函数(即 A.__init__())
>        print('DD')
>
>d = D()
>d.hsa()
>print('*'*20)
>
>"""
># 输出结果
>D
>B
>C
>A
>CC
>BB
>DD
>A has a
>********************
>
>
>"""
>
>
>
>```


- ### 类的多态



>
>```py
>
>
># 类的多态
>class Animal(object):
>    def run(self):
>        print('Animal is running...')
>
>class Dog(Animal):
>    def run(self):
>        print('Dog is running...')
>
>    def eat(self):
>        print('Eating meat...')
>
>class Cat(Animal):
>    def run(self):
>        print('Cat is running...')
>
>    def eat(self):
>        print('Eating fish...')
>
>    def run_twice(animal):
>        animal.run()
>        animal.run()
>
>dog = Dog()
>dog.run()
>dog.eat()
>
>cat = Cat()
>cat.run()
>cat.eat()
>
>
>animal = Animal()
>animal.run()
>
># 多态的好处：
># 1. 代码可读性
># 2. 避免了类的继承关系导致子类和父类的方法名称冲突; 子类和父类的方法名称冲突，子类的方法会覆盖父类的方法
># 3. 避免了类的继承关系导致子类和父类的变量名称冲突; 子类和父类的变量名称冲突，子类的变量会覆盖父类的变量
>
># 即，不同的类可以有同一个方法，但是不同的类重写的方法不同，这样就可以实现多态(同名，具体功能不同；如 名称叫动物，但是有猪狗猫不同)。
>
>
>"""
># 输出结果：
>
>Dog is running...
>Eating meat...
>Cat is running...
>Eating fish...
>Cat is running...
>Cat is running...
>Animal is running...
>
>"""
>
>
>```
>
>






------

## tkinter


### 按钮

- 按钮、框架、标签、输入框、选择框、下拉菜单 

>
>```py
>
>
>import tkinter
>
>import tkinter.ttk
>
>root = tkinter.Tk()
>root.title("这是标题")
>root.size = (300, 300)                                     # 定义窗口大小
>root.geometry("700x550")                                   # 定义窗口大小
>#root.resizable(False, False)                              # 禁止改变窗口大小
>
># 创建框架
>frame = tkinter.LabelFrame(root,width=500,height=500,text="这是框架")
>#frame.pack()                                              # (自动) 将框架放置到窗口中
>frame.place(x=20,y=20)                                     # 将框架放置到窗口中
>
># 创建标签
>label = tkinter.Label(frame,text="这是标签")
>label.place(x=20,y=20)                                     # 框架左上角是坐标原点，所以这里的坐标是相对于框架的
>
>
># 输入框变量
>var = tkinter.StringVar()
>entry = tkinter.Entry(frame,width=30,textvariable=var)     # 创建输入框
>entry.place(x=20,y=60)
>
># 创建按钮
>button = tkinter.Button(frame,text="点击我",command=lambda:print("输入框内容是：",var.get()))
>button.place(x=20,y=100)
>
># 创建复选框
>var2 = tkinter.IntVar()
>check = tkinter.Checkbutton(frame,text="复选框",variable=var2)
>check.place(x=20,y=140)
>
>
># 创建下拉菜单
>var3 = tkinter.StringVar()
>var3.set("请选择")
>menu = tkinter.OptionMenu(frame,var3,"选项1","选项2","选项3","选项4")
>menu.place(x=20,y=180)
>
>
>
># 创建单选框
>var4 = tkinter.IntVar()
>radio = tkinter.Radiobutton(frame,text="单选框",variable=var4,value=1)
>radio.place(x=20,y=220)
>
>
>
>
>root.mainloop()
>
>
>
>```
>
>


### 菜单


>
>```py
>
>
>import tkinter
>root = tkinter.Tk()
>root.title("标题")
>root.geometry("300x300")
>
>
># 1创建主菜单
>bigmenu = tkinter.Menu(root)
>
># 2创建子菜单     设置tearoff = 0,让菜单不会飘出窗口
>filemenu = tkinter.Menu(bigmenu,tearoff = 0)
># 子菜单可以添加功能
>filemenu.add_command(label = '打开文件',command=lambda :print('打开文件'))
>filemenu.add_command(label = '保存文件',command=lambda :print('保存文件'))
>filemenu.add_command(label = '导出文件',command=lambda :print('导出文件'))
># 横线分割
>filemenu.add_separator()
>filemenu.add_command(label = '退出',command=root.quit)
># 3将子菜单加入主菜单
>bigmenu.add_cascade(label = '文件',menu = filemenu,command=lambda :print('文件'))
>
># 2创建子菜单
>editmenu = tkinter.Menu(bigmenu)
># 3将子菜单加入主菜单
>bigmenu.add_cascade(label = '修改',menu = editmenu)
>
># 4将主餐单加入窗口
>root.config(menu = bigmenu)
>
>root.mainloop()
>
>
>```
>
>



### 进度条




>
>```py
>
>
>import tkinter as tk
>from tkinter import ttk
>
>def lyz():
>    #改进度条模式
>    pb.config(mode='determinate')
>    pb.config(maximum=100)
>    pb.config(value=0)
>    pb.start()  #自动开始进度条
>
>def manman_step():
>    if pb['mode'] == 'indeterminate':                 #判断当前进度条模式
>        pb.config(mode='determinate')                           #改变进度条模式
>        pb.config(maximum=100)                                           #改变进度条最大值
>        pb.config(value=0)                                           #改变进度条当前值
>
>    pb.step(10)# 步进10
>
>
>
>window = tk.Tk()
># 设置窗口大小
>winWidth = 600
>winHeight = 400
># 获取屏幕分辨率
>screenWidth = window.winfo_screenwidth()
>screenHeight = window.winfo_screenheight()
>
>x = int((screenWidth - winWidth) / 2)
>y = int((screenHeight - winHeight) / 2)
>
># 设置主窗口标题
>window.title("ProgressBar参数说明")
># 设置窗口初始位置在屏幕居中
>window.geometry("%sx%s+%s+%s" % (winWidth, winHeight, x, y))
># 设置窗口图标
>#window.iconbitmap("./image/icon.ico")
># 设置窗口宽高固定
>window.resizable(0, 0)
>
>""" Progressbar参数
>
>        STANDARD OPTIONS
>
>            class, cursor, style, takefocus
>
>        WIDGET-SPECIFIC OPTIONS
>
>            orient, length, mode, maximum, value, variable, phase
> """
>
>pb = ttk.Progressbar(window, length=400, value=0, mode="indeterminate")
>pb.pack(pady=10)
>
>
>def start():
>    pb.start()
>
>
>tk.Button(window, text="开始", command=start).pack()
>
>tk.Button(window, text="另一种方式", command=lyz).pack()
>
>tk.Button(window, text="步进", command=manman_step).pack()
>
>window.mainloop()
>
>```
>
>











------
------
