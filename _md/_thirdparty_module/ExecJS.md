# ExecJS

- python3的ExecJS使用说明


## 1.安装
> pip官方安装

```bash
pip install PyExecJS

```

## 2.代码块内js函数

>
>```py
>import execjs
>ctx = execjs.compile("""
>       function add(x, y) {
>               return x + y;
>          }
>""") # 获取代码编译完成后的对象
>print(ctx.call("add", 1, 2)) # 3 
># print(ctx.eval("add({0},{1})").format(1,2)) # 报错
>print(ctx.eval('add("{0}", "{1}")').format("1","2")) # 12
>
>```
>


## 3.执行文件里的js函数

> - 例如： jsCode.js 文件有以下代码。
> 
>```js
>function add(x, y) {
>    return x + y;
>}
>
>```
>


调用代码

>
>```py
>import execjs
>file = 'jsCode.js'
>ctx = execjs.compile(open(file).read())
>js = 'add("{0}", "{1}")'.format("1","2")
>params = ctx.eval(js)
>print(params) # 12
>params = ctx.call('add',1,2)
>print(params) # 3
>
>```
>


## 异常解决

- ** UnicodeEncodeError: 'gbk' codec can't encode character xxx **



问题的原因：

文件编码方式出问题了。默认用gbk解码方式读文件。

解决方案：
1.读时改解码方式。
ctx = execjs.compile(open(file,encoding="utf-8").read())

2.js文件保存时，选gbk编码。