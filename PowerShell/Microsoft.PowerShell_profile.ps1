# 设置 Linux-like 键绑定
Set-PSReadLineKeyHandler -Chord 'Ctrl+a' -Function BeginningOfLine
Set-PSReadLineKeyHandler -Chord 'Ctrl+e' -Function EndOfLine
Set-PSReadLineKeyHandler -Chord 'Ctrl+u' -Function BackwardDeleteLine
Set-PSReadLineKeyHandler -Chord 'Ctrl+k' -Function ForwardDeleteLine
Set-PSReadLineKeyHandler -Chord 'Ctrl+w' -Function BackwardKillWord
Set-PSReadLineKeyHandler -Chord 'Ctrl+y' -Function Yank
Set-PSReadLineKeyHandler -Chord 'Ctrl+r' -Function ReverseSearchHistory
Set-PSReadLineKeyHandler -Chord 'Ctrl+l' -Function ClearScreen  


 # 设置fnm
fnm env --use-on-cd | Out-String | Invoke-Expression

# 获取oh-my-posh的安装路径
$ohMyPoshPath = (scoop which oh-my-posh)
oh-my-posh init pwsh --config 'C:/Users/Administrator/scoop/apps/oh-my-posh/current/themes/kushal.omp.json' | Invoke-Expression