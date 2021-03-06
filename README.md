# dotvim

Configuration for vim 8. It contains configuration for mainly vim (not
sure about macvim)

# Installing

1. Install [powerline-fonts](https://github.com/powerline/fonts) and [Nerd
   Front!](https://github.com/ryanoasis/nerd-fonts#font-installation)

```
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh cd ..
rm -rf fonts
```

2. Change the Terminal profile setting to use one of the installed fonts from
   the previous step
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

4. For MACVIM or other GUI users to enable powerline fonts

```
ln -s .vim/.gvimrc ~/.gvimrc
```
# Manage Plugins

## Installing a package

```
cd pack/jhejderup/{start | opt}
git submodule add {repo_url.git}
```

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
