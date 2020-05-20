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
* [ ] Tmux, Zsh, Vim theme
* [ ] Make script fit other Linux/Unix OS (e.g. https://github.com/iofu728/zsh.sh/blob/master/zsh.sh)
* [ ] Make script has configure argument (e.g. ~/.fzf/install)
* [ ] NeoVim
* [ ] VSCode perferences

## Resources

> These links seems duplicate from MasterCoding repository. Combine then later.

* [webpro/awesome-dotfiles: A curated list of dotfiles resources.](https://github.com/webpro/awesome-dotfiles)
* [TheLocehiliosan/yadm: Yet Another Dotfiles Manager](https://github.com/TheLocehiliosan/yadm)
