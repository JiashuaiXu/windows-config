# windows 配置

# 搭建统一的winows 环境

使用scoop

# 切换掉火狐的顶部导航栏



# 

```
code $PROFILE
```









```bash
netsh winhttp reset proxy
```



临时代理



```bash
$env:HTTP_PROXY="http://localhost:10809"
$env:HTTPS_PROXY="http://localhost:10809"
```

永久代理

```bash
[System.Environment]::SetEnvironmentVariable("HTTP_PROXY", "http://localhost:10809", "Machine")
[System.Environment]::SetEnvironmentVariable("HTTPS_PROXY", "http://localhost:10809", "Machine")

#有效的：
netsh winhttp set proxy proxy-server="http=localhost:10809;https=localhost:10809"
```
