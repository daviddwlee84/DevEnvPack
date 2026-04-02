# Notes of dotfiles best practice in 2025

## Solutions

1. [Nix](#nix) + [Stow](#stow) (keep the $HOME structure in git)
2. Dotfile manager
   1. [YADM](#yadm) => able to encrypt `.ssh/*`

## Components

### Nix

Tutorial

- [Nix & NixOS | Declarative builds and deployments](https://nixos.org/)[Nix is my favorite package manager to use on macOS](https://www.youtube.com/watch?v=Z8BL8mdzWHI)
  - [mas-cli/mas: :package: Mac App Store command line interface](https://github.com/mas-cli/mas)

Nix

- [Nix & NixOS | Declarative builds and deployments](https://nixos.org/)

Nix Darwin

- [nix-darwin/nix-darwin: nix modules for darwin](https://github.com/nix-darwin/nix-darwin)
- [nix-darwin-activation.nix](https://gist.github.com/elliottminns/211ef645ebd484eb9a5228570bb60ec3)

Nix Homebrew

- [zhaofengli/nix-homebrew: Homebrew installation manager for nix-darwin](https://github.com/zhaofengli/nix-homebrew)

### Stow

Tutorial

- [Stow has forever changed the way I manage my dotfiles](https://www.youtube.com/watch?v=y6XCebnB9gs)
- [Stow - GNU Project - Free Software Foundation](https://www.gnu.org/software/stow/)

### YADM

- [YADM | dotfile Manager | easy setup with git](https://www.youtube.com/watch?v=viFtq1RUh1c)
- [Yet Another Dotfiles Manager - yadm](https://yadm.io/)
  - [yadm-dev/yadm: Yet Another Dotfiles Manager](https://github.com/yadm-dev/yadm)
