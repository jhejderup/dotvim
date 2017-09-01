# dotvim
Configuration for vim 8. It contains configuration for mainly vim (not sure about macvim)

# Installing

1. Install the [powerline-fonts](https://github.com/powerline/fonts)

```
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
```

2. Change the Terminal profile setting to use of the installed fonts from the previous step
```
Terminal > Preferences > Text > Font [Source Code Pro for Powerline pt 11.]
```

3. Install the VIM Plugins

```
git clone https://github.com/jhejderup/dotvim.git .vim
ln -s .vim/.vimrc ~/.vimrc
cd .vim
git submodule init
git submodule update 
```

# Manage Plugins

## Updating packages

```
git submodule update --remote --merge
```

## Removing a package

```
git submodule deinit .vim/pack/jhejderup/start/nameofplugin
git rm .vim/pack/jhejderup/start/nameofplugin
rm -Rf .git/modules/.vim/pack/jhejderup/start/nameofplugin
```


