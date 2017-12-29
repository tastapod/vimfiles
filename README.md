This is my vim setup. I'm using vim-plug[1] to manage my vim plugins.

To get started, just move your existing .vim and .vimrc out of the way and
source this file, or type the following from wherever you want to install:

    git clone https://github.com/tastapod/vimfiles.git ~/.vim
    ln -s ~/.vim/vimrc ~/.vimrc

Then set up vim-plug using the [installation instructions](https://github.com/junegunn/vim-plug/blob/master/README.md#installation).

To add a new plugin:

- Add `Plug 'owner/repo'` in ~/.vimrc
- Run `:PluginInstall` from vim

[1]: https://github.com/junegunn/vim-plug
