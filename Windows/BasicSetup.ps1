# 1. Install chocolately
# 2. Install vim, git, ...
# 3. Install oh-my-posh
# https://github.com/JanDeDobbeleer/oh-my-posh
# https://ohmyposh.dev/docs/installation
Install-Module oh-my-posh -Scope CurrentUser -AllowPrerelease
Get-PoshThemes
oh-my-posh --print-shell
# 4. Download font
# [Windows 終端機 Powerline 設定 | Microsoft Docs](https://docs.microsoft.com/zh-tw/windows/terminal/tutorials/powerline-setup)
# 5. Install Windows Terminal & Set default console
# 6. Enable WSL
# 7. Set personal config (like .bashrc) in $profile