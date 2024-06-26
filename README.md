# windows 配置

# 搭建统一的winows 环境

# 先安装最新版本的[powershell](https://learn.microsoft.com/zh-cn/powershell/scripting/install/installing-powershell-on-windows?view=powershell-5.1)

```bash

winget search Microsoft.PowerShell

winget install --id Microsoft.Powershell.Preview --source winget

powershell -version


```




先安装[scoop](https://github.com/ScoopInstaller/Scoop)，然后安装oh-my-posh
# For [Admin](https://github.com/ScoopInstaller/Install)
# I don't care about other parameters and want a one-line command
```
iex "& {$(irm get.scoop.sh)} -RunAsAdmin"
```




```bash
 oh-my-posh font install JetBrainsMono
```

# 



# 设置powershell代理配置

```
code $PROFILE
```

会自动打开Microsoft.PowerShell_profile.ps1

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

#有效的：如果你希望通过 netsh 设置系统范围的 HTTP 代理，可以使用以下命令：
netsh winhttp set proxy proxy-server="http=localhost:10809;https=localhost:10809"
```

切换掉火狐的顶部导航栏





# 小技巧

shift+enter 可以类似linux实现windows+q的命令缓存功能
