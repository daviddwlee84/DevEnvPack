# DevEnvPack

Bring my development environment everywhere. vim, tmux, bash, zsh, VSCode, docker, ssh, and so on.

> [Some other notes](https://github.com/daviddwlee84/MasterCoding)

## Getting Started

> Currently only support Debian (Ubuntu, Raspbbian)

* Install some must have application
* Install oh-my-zsh

```sh
./BasicSetup.sh
```

### dotfiles

* zshrc
* vimrc
* bashrc

```sh
./UpdateDotFiles.sh
```

### VSCode

After install VSCode (make sure `code` is in the PATH)

```sh
./InstallVscodeExtensions.sh
```

### Python

* Install pip

```sh
./PythonSetup.sh
```

### My Personal Settings

* Setup git name and email
* Store git credential

```sh
./PersonalConfig.sh
```

## TODO

* [ ] Update vimrc
* [ ] Make script fit other Linux/Unix OS (e.g. https://github.com/iofu728/zsh.sh/blob/master/zsh.sh)
* [ ] NeoVim
* [ ] VSCode perferences

## Resources

> These links seems duplicate from MasterCoding repository. Combine then later.

* [webpro/awesome-dotfiles: A curated list of dotfiles resources.](https://github.com/webpro/awesome-dotfiles)
* [TheLocehiliosan/yadm: Yet Another Dotfiles Manager](https://github.com/TheLocehiliosan/yadm)
