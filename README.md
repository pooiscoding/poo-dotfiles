# poo-dotfiles

My personal Bash and Vim configuration

## Quick setup

```bash
```

## Bash part

### Cat package

The cat package is a tool that displays ASCII art of cats along with greeting messages. It was originally designed to create a customizable login banner without modifying system settings.

#### Implementation

Currently, the package is used in `.bashrc` by executing the `prcat` command. You can set up the `prcat` command in any directory included in your environment variable `PATH` by running:

```bash
ln -s [the path to .cats/prcat.sh] ${PATH%%:*}prcat
```

Alternatively, you can modify `.bashrc` directly by replacing `prcat` with the full path to `.cats/prcat.sh`.

#### File Structure

Inside the `.cats` directory, apart from `prcat.sh`, you will find files named `cat[0-9]+`, which serve as the ASCII cat database.

Currently, there are files named `cat1` through `cat6`. You can add more cat ASCII files as long as their filenames match the regex pattern `cat[0-9]+`, allowing `prcat` to load them.

#### Quick setup (If you don't want to clone my repo)

> Note that in the setup script, the `~/.mycmd` directory is added into `$PATH`

```bash
curl -fL -o setup_cat.sh -O "https://raw.githubusercontent.com/pooiscoding/poo-dotfiles/refs/heads/main/setup_cat.sh"
chmod +x setup_cat.sh
./setup_cat.sh
source ~/.bashrc
```

#### Quick drop (If you want to drop this package)

```bash
curl -fL -o drop_cat.sh -O "https://raw.githubusercontent.com/pooiscoding/poo-dotfiles/refs/heads/main/drop_cat.sh"
chmod +x drop_cat.sh
./drop_cat.sh
source ~/.bashrc
```

This setup ensures easy access to the `prcat` command.

## Vim part

### vim-plug

I use this vim-plug manager: [junegunn/vim-plug](https://github.com/junegunn/vim-plug)

Follow the installation guide to setup

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

And then do the following cmd in vim to install the plugin within my .vimrc

```
:PlugInstall
```

## Fonts

The main font I use is `Source Code Pro for Powerline`, which is a powerline font !

And I use `Sarasa Mono TC`, `Sarasa Mono J` for Chinese and Japanese supports
