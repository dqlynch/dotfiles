# dotfiles

from scratch:
```
cd ~ && git init .
git remote add origin https://github.com/dqlynch/dotfiles.git
git pull origin master
git boot
source ~/.bash_profile
```

for zsh: `chsh -s /bin/zsh`

may need to restart

zprezto currently broken lol:
`rm -rf ~/.z*` and then follow https://github.com/sorin-ionescu/prezto to reinstall
