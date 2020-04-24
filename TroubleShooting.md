# Trouble Shooting

## Solved

### Zsh-autocomplete

```txt
[oh-my-zsh] Insecure completion-dependent directories detected:
drwxrwxrwx 1 daviddwlee84 daviddwlee84 4096 Apr 24 22:08 /home/daviddwlee84/.oh-my-zsh/custom/plugins/zsh-autosuggestions

[oh-my-zsh] For safety, we will not load completions from these directories until
[oh-my-zsh] you fix their permissions and ownership and restart zsh.
[oh-my-zsh] See the above list for directories with group or other writability.

[oh-my-zsh] To fix your permissions you can do so by disabling
[oh-my-zsh] the write permission of "group" and "others" and making sure that the
[oh-my-zsh] owner of these directories is either root or your current user.
[oh-my-zsh] The following command may help:
[oh-my-zsh]     compaudit | xargs chmod g-w,o-w

[oh-my-zsh] If the above didn't help or you want to skip the verification of
[oh-my-zsh] insecure directories you can set the variable ZSH_DISABLE_COMPFIX to
[oh-my-zsh] "true" before oh-my-zsh is sourced in your zshrc file.
```

Solution

```sh
compaudit | xargs chmod g-w,o-w
```
