# DevEnvPack

Bring my development environment everywhere. vim, tmux, bash, zsh, VSCode, docker, ssh, and so on.

> [Some other notes](https://github.com/daviddwlee84/MasterCoding)

## Getting Started

### Run Once

> Currently only support Debian (Ubuntu, Raspbbian)

* Install some must have application
* Install oh-my-zsh

```sh
./BasicSetup.sh
```

#### VSCode

After install VSCode (make sure `code` is in the PATH)

```sh
./InstallVscodeExtensions.sh
```

#### Python

* Install pip
* Install common packages

```sh
./PythonSetup.sh
```

#### My Personal Settings

* Setup git name and email
* Store git credential

```sh
./PersonalConfig.sh
```

#### Docker

* Ubuntu: [Install Docker Engine on Ubuntu | Docker Documentation](https://docs.docker.com/engine/install/ubuntu/)

  ```sh
  # TODO: haven't test on Ubuntu yet
  ./InstallDocker.sh
  ```

* Windows: [Docker Desktop for Windows - Docker Hub](https://hub.docker.com/editions/community/docker-ce-desktop-windows)
  1. Make sure you have enable virtulaization in BIOS
  2. Enable Hyper-V features
  3. Just install Windows version and then you should be able to use it in WSL

> * WSL: WSL can't support docker engine! (Install by Ubuntu way)
>   * [Logs and troubleshooting | Docker Documentation](https://docs.docker.com/docker-for-windows/troubleshoot/#virtualization-must-be-enabled)
>   * [WSL 與 Windows 的完美雙結合 — 在WSL 中安裝 Docker - 一個小小工程師的隨手筆記 - Medium](https://medium.com/%E4%B8%80%E5%80%8B%E5%B0%8F%E5%B0%8F%E5%B7%A5%E7%A8%8B%E5%B8%AB%E7%9A%84%E9%9A%A8%E6%89%8B%E7%AD%86%E8%A8%98/wsl-%E8%88%87-windows-%E7%9A%84%E5%AE%8C%E7%BE%8E%E9%9B%99%E7%B5%90%E5%90%88-%E5%9C%A8wsl-%E4%B8%AD%E5%AE%89%E8%A3%9D-docker-e722e87ffa3b)
> * WSL2: TODO
> * Hyper-V and Virtualization settings
>   * [**Enable Hyper-V on Windows 10 | Microsoft Docs**](https://docs.microsoft.com/en-us/virtualization/hyper-v-on-windows/quick-start/enable-hyper-v?redirectedfrom=MSDN)
>   * [FIX: Hyper-V and containers features are not enabled error in Windows](https://windowsreport.com/hyper-v-and-containers-not-enabled/)

#### OpenSSH

Powershell

```powershell
cd Windows
.\InstallOpenSSH.ps1
```

1. Install latest powershell
   * [Releases · PowerShell/PowerShell](https://github.com/PowerShell/PowerShell/releases/)
   * [在 Windows 上安裝 PowerShell - PowerShell | Microsoft Docs](https://docs.microsoft.com/zh-tw/powershell/scripting/install/installing-powershell-core-on-windows?view=powershell-7.1#download-the-installer-package)
   * Current version is powershell 7. And you can execute it with `c:/progra~1/powershell/7/pwsh.exe`
2. Set the `Subsystem` line into `Subsystem powershell c:/progra~1/powershell/7/pwsh.exe -sshs -NoLogo`
   * Config file: `$env:ProgramData\ssh`

```powershell
# Make sure restart ssh daemon after changing settings
Restart-Service sshd
```

Font

* [ryanoasis/nerd-fonts: Iconic font aggregator, collection, & patcher. 3,600+ icons, 50+ patched fonts: Hack, Source Code Pro, more. Glyph collections: Font Awesome, Material Design Icons, Octicons, & more](https://github.com/ryanoasis/nerd-fonts)
* [microsoft/cascadia-code: This is a fun, new monospaced font that includes programming ligatures and is designed to enhance the modern look and feel of the Windows Terminal.](https://github.com/microsoft/cascadia-code)
* [powerline/fonts: Patched fonts for Powerline users.](https://github.com/powerline/fonts)

```powershell
# Windows Terminal Setting
$settings = (Get-Item "C:\users\$env:UserName\AppData\Local\Packages\Microsoft.WindowsTerminal_*\LocalState\settings.json")
$settings.DirectoryName
```

> The login password is your Windows account password (if you have login your Windows)

#### Set Powershell setting (TODO)

* [How to create permanent PowerShell Aliases - Stack Overflow](https://stackoverflow.com/questions/24914589/how-to-create-permanent-powershell-aliases)

`$profile`: `~\Documents\PowerShell\Microsoft.PowerShell_profile.ps1`

### Run When Update

#### dotfiles

* zshrc
* vimrc
* bashrc

```sh
./UpdateDotFiles.sh
```

## TODO

* [ ] Auto yes during interactive script
  * oh-my-zsh
  * fzf
* [ ] Update vimrc
* [ ] Clean up unused vim plugin
* [ ] Tmux, Zsh, Vim theme
* [ ] Make script fit other Linux/Unix OS (e.g. https://github.com/iofu728/zsh.sh/blob/master/zsh.sh)
* [ ] Make script has configure argument (e.g. ~/.fzf/install)
* [ ] NeoVim
* [ ] VSCode preferences

Windows

* [ ] Powershell version setting

## Resources

> These links seems duplicate from MasterCoding repository. Combine then later.

* [webpro/awesome-dotfiles: A curated list of dotfiles resources.](https://github.com/webpro/awesome-dotfiles)
* [TheLocehiliosan/yadm: Yet Another Dotfiles Manager](https://github.com/TheLocehiliosan/yadm)

---

## Vim

Manage by vim-plug

* [junegunn/vim-plug: Minimalist Vim Plugin Manager](https://github.com/junegunn/vim-plug)
  * [Automatic Installation - tips · junegunn/vim-plug Wiki](https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation)

Plugin

* [rlue/vim-barbaric: Automatic input method switching for vim](https://github.com/rlue/vim-barbaric)
* [lyokha/vim-xkbswitch: vim plugin for automatic keyboard layout switching in insert mode](https://github.com/lyokha/vim-xkbswitch)
  * [DeXP/xkb-switch-win: xkb-switch-lib API port to Win32/Win64](https://github.com/DeXP/xkb-switch-win)