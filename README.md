# Introduction
This is my vim configuration file, you can copy it as you well.

# Installation
1. Git clone to local

        git clone https://github.com/yyscamper/vimconfig.git


2. Link vim config file

        ln -s vimconfig/vimrc ~/.vimrc

3. Install dependancy
   (Take ubuntu for example)

    2.1 System dependancy
    
        sudo apt-get install silversearcher-ag
        sudo apt-get install buiuld-essential cmake pyton-dev    #This is plugin 'YCM' needs

    2.2 Javscript

        sudo apt-get install nodejs    #if you have installed node.js, you can ignore this command
        npm install -g jslint
        npm install -g jshint

    2.3 Python

        pip install pylint      # you need install python first

# Key Mapping

|  Key       | Group         | Function  |
|:----------:|:-------------:|:-----|
| F2 | fn | Toggle Tagbar |
| F3 | fn | Do Syntastic check |
| F4 | fn | Toggle Syntastic error window |
| F10 | fn | Quick run current file (plugin: quickrun) |
| F11 | fn | Hidden line number and ident guide line |
| F12 | fn | Toggle Paste mode |
| ,r  |    | Quick run current file (plugin: quickrun) |
| ,tt | Tab | Create new tab |
| ,tn | Tab | Go to next tab |
| ,tp | Tab | Go to previous tab |
| ,ww | Window | Switch to next window |
| ,wq | Window | Close window |
| ,w  | General | Fast saving, same as :w!<CR> | 
| ,,h | Move | easymotion-linebackward |
| ,,j | Move | easymotion-j |
| ,,k | Move | easymotion-k |
| ,,l | Move | easymotion-lineforward |
| ,q | General | Quickly close current window, same as :q<CR> |
| ; | General | Enter command line, same as : |


# Plugins

        Plugin 'scrooloose/nerdtree'
        Plugin 'jistr/vim-nerdtree-tabs'
        Plugin 'bufexplorer.zip'
        "Plugin 'Lokaltog/powerline'
        "Plugin 'ashwin/vim-powerline'

        Plugin 'moll/vim-node'
        "Plugin 'walm/jshint.vim'
        Plugin 'scrooloose/syntastic'
        Plugin 'pangloss/vim-javascript'
        Plugin 'terryma/vim-multiple-cursors'
        Plugin 'rking/ag.vim'
        Plugin 'bling/vim-airline'
        Plugin 'marijnh/tern_for_vim'
        "Plugin 'vim-scripts/sudo.vim'
        Plugin 'elzr/vim-json'
        Plugin 'Chiel92/vim-autoformat'
        Plugin 'jiangmiao/simple-javascript-indenter'
        Plugin 'Valloric/YouCompleteMe'
        Plugin 'tComment'
        Plugin 'Yggdroot/indentLine'
        "Plugin 'nathanaelkane/vim-indent-guides'
        Plugin 'kshenoy/vim-signature'
        Plugin 'ntpeters/vim-better-whitespace'
        Plugin 'junegunn/vim-easy-align'
        Plugin 'tpope/vim-surround'
        Plugin 'tpope/vim-repeat'
        Plugin 'majutsushi/tagbar'
        Plugin 'ramitos/jsctags'
        Plugin 'klen/python-mode'
        Plugin 'thinca/vim-quickrun'
        Plugin 'kien/rainbow_parentheses.vim'
        Plugin 'terryma/vim-expand-region'
        Plugin 'easymotion/vim-easymotion'

# References
* [Amir Salihefendic's vimrc](http://amix.dk/vim/vimrc.html)
* [amix/vimrc](https://github.com/amix/vimrc)
* [k-vim](https://github.com/wklken/k-vim)
