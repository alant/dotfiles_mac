dotfiles_mac
============
1. install zsh and some other tools
```bash
# install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# using the setup script
./setup.sh
```
2. add ```source $HOME/.bash_profile``` in front of .zshrc. So things like npm and anaconda installed python3 will be found by zsh 

3. turn off “scrolling the history” in iTerm2:
select the Preferences menu -> select the Advanced tab. Scroll down to the Mouse section -> Scroll wheel sends arrow keys when in alternate screen mode from Yes to No. You will have to restart iTerm2 for the change to take effect.



