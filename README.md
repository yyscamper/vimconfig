# Introduction
This is my vim configuration file, you can copy it as you well.

# Installation
1. Get local copy
        git clone https://github.com/yyscamper/vimconfig.git

2. Link vim config file
        ln -s vimconfig/vimrc ~/.vimrc

3. Install [Vundle](https://github.com/gmarik/Vundle.vim)
        git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

4. Install plugins
Open Vim, and type *:PluginInstall*, wait until all plugins are installed.

5. Install dependancy
   (Take ubuntu for example)
    - System dependancy
        sudo apt-get install silversearcher-ag  # This is what vim-ag needs
        sudo apt-get install buiuld-essential cmake pyton-dev    #This is plugin 'YCM' needs

    - Javscript
        sudo apt-get install nodejs    #if you have installed node.js, you can ignore this command
        npm install -g jslint
        npm install -g jshint

    - Python
        pip install pylint      # you need install python first

6. Compile YouCompleteMe
Follows the guide in <https://github.com/Valloric/YouCompleteMe>, this will take very long time (around 1 hour in my PC).

# Key Mapping

## Vim Cheat Sheet
Download the cheat sheet from <http://coolshell.cn/articles/5479.html>
![](http://coolshell.cn//wp-content/uploads/2011/09/vim_cheat_sheet_for_programmers_print.png)

## Vim General
|     Key    |  Function |
|:----------:|:----------|
| * | (visual mode)Search next for the current selection |
| * | (normal mode) Keep search pattern at the center of the screen |
| # | (visual mode) Search previous for  the current selection |
| # | (normal mode) Keep search pattern at the center of the screen |
| ; | Enter command line, same as : |
| n | (normal mode) Keep search pattern at the center of the screen |
| N | (normal mode) Keep search pattern at the center of the screen |
| U | easier redo, same as Ctrl+r |
| v | expand selection region (Plugin: vim-expand-region) |
| V | shrink selection region (Plugin: vim-expand-region |
| w!! | sudo & write a file |
| Y | Select whole line |
| ,q | Quickly close current window, same as :q<CR> |
| ,v | Select block |
| ,w | Fast saving, same as :w!<CR> |


## Fn Keys
|     Key    |  Function |
|:----------:|:----------|
| F2  | Toggle Tagbar (Plugin: tagbar) |
| F3  | Do Syntastic check |
| F4  | Toggle Syntastic error window |
| F10 | Quick run current file (plugin: quickrun) |
| F11 | Toggle line number and indent line, useful when you copy screen |
| F12 | Toggle Paste mode |

## CTRL+?
|     Key    |  Function |
|:----------:|:----------|
| CTRL+b | Comment block |
| CTRL+f | Format source file (plugin: vim-autoformat) |
| CTRL+l | Comment one line |

## *{Leader}*?
|     Key    |  Function |
|:----------:|:----------|
| ,b | Open a window listing all buffers (Plugin: buffergator)
| ,B | Close the buffer catalog (Plugin: buffergator)
| ,n | Toggle NERDTree |
| ,r | Quick run current file (plugin: quickrun) |
| ,w | Fast saving, same as :w!<CR> |
| ,q | Quickly close current window, same as :q<CR> |
| ,v | Select block |
| ,/ | Remove highlight |

## Line Movement
|     Key    |  Function |
|:----------:|:----------|
|,lj | Move current line to above |
|,lk | Move current line to below |

## Tab
|     Key    |  Function |
|:----------:|:----------|
| ,te | Open a new tab with  the current buffer's path, Super useful when editing files in the same director |
| ,tm | Tab move |
| ,tn | Go to next tab |
| ,to | Tab only |
| ,tp | Go to previous tab |
| ,tq | Close tab |
| ,tt | Create new tab |
| ,1 | Go to 1st tab |
| ,2 | Go to 2nd tab |
| ,3 | Go to 3rd tab |
| ,4 | Go to 4th tab |
| ,5 | Go to 5th tab |
| ,6 | Go to 6th tab |
| ,7 | Go to 7th tab |
| ,8 | Go to 8th tab |
| ,9 | Go to 9th tab |
| ,0 | Go to last tab |

## Window
|     Key    |  Function |
|:----------:|:----------|
| ,wh | Go to left window |
| ,wj | Go to above window |
| ,wk | Go to below window |
| ,wl | Go to right window |
| ,wq | Close window |
| ,ww | Switch to next window |


## Buffer
|     Key    |  Function |
|:----------:|:----------|
| ,b | Open a window listing all buffers (Plugin: buffergator)
| ,B | Close the buffer catalog (Plugin: buffergator)
| ,bb | Create new buffer |
| ,bn | Go to next buffer |
| ,bp | Go to previous buffer |

## Misc
|     Key    |  Function |
|:----------:|:----------|
| ,~m | Remove the windows ^M when the encoding gets messed up |

# Plugin

## Plugin List


        " General plugins
        "Plugin 'Lokaltog/powerline'
        "Plugin 'ashwin/vim-powerline'
        Plugin 'bling/vim-airline'
        Plugin 'scrooloose/nerdtree'
        Plugin 'jistr/vim-nerdtree-tabs'
        Plugin 'bufexplorer.zip'
        Plugin 'rking/ag.vim'
        Plugin 'terryma/vim-multiple-cursors'
        Plugin 'kshenoy/vim-signature'
        Plugin 'ntpeters/vim-better-whitespace'
        Plugin 'terryma/vim-expand-region'
        Plugin 'easymotion/vim-easymotion'

        " Common plugins for source codes
        Plugin 'scrooloose/syntastic'
        Plugin 'Chiel92/vim-autoformat'
        Plugin 'Valloric/YouCompleteMe'
        Plugin 'tComment'
        Plugin 'Yggdroot/indentLine'
        "Plugin 'nathanaelkane/vim-indent-guides'
        Plugin 'junegunn/vim-easy-align'
        Plugin 'tpope/vim-surround'
        Plugin 'tpope/vim-repeat'
        Plugin 'majutsushi/tagbar'
        Plugin 'thinca/vim-quickrun'
        Plugin 'kien/rainbow_parentheses.vim'

        " Javascript/Node.js
        Plugin 'moll/vim-node'
        "Plugin 'walm/jshint.vim'
        Plugin 'marijnh/tern_for_vim'
        Plugin 'pangloss/vim-javascript'
        Plugin 'jiangmiao/simple-javascript-indenter'
        Plugin 'ramitos/jsctags'

        " Python
        Plugin 'klen/python-mode'

        " JSON
        Plugin 'elzr/vim-json'


## Plugin: [NERDTree](https://github.com/scrooloose/nerdtree)
### Global Key Mapping
|     Key    |  Function |
|:----------:|:----------|
| ,n | Toggle NERDTree |

### NERDTree Window Only Key Mapping
|     Key    |  Function |
|:----------:|:----------|
| *{Enter}* or o| Open current file or folder |
| s | Open the file in horizontal split window |
| v | Open the file in vertical split window |

### User Guide
- (Chinese) <http://www.jianshu.com/p/eXMxGx>

## Plugin: [bufexplorer](http://www.vim.org/scripts/script.php?script_id=42)
Use vim-buffergator instead.

## Plugin [vim-buffergator](https://github.com/jeetsukumaran/vim-buffergator)
### Global
|     Key    |  Function |
|:----------:|:----------|
| ,b | Open a window listing all buffers
| ,B | Close the buffer catalog

### Vim-buffergator Only
|     Key    |  Function |
|:----------:|:----------|
| *{Enter}*  or o | Edit the selected buffer in the prevoius window
| go | open the currently selected buffer in the previous window, but with focus remaining in the buffer catalog ("42go" will do the same, but will select buffer number 42).
| *{Number}{Enter}* | Open buffer number in prevous window, such as 42*{Enter}*, 5*{Enter}*
| A | Toggle zoom in/zoom out the vim-buffergator window
| d | Delete the selected buffer
| D | Unconditionally delete the selected buffer.
| i | open the currently selected buffer in new horizontal split. "42i" will do the same
| I | open the buffer in a new vertical split, but keep the focus in the buffer catalog. "42I" will do the same.
| q | Quit the index/catalog window.
| r | Update (rebuild/refresh) index.
| s | Open the currently selected buffer in new vertical split. "42s" will do the same.
| S | open the buffer in a new vertical split, but keep the focus in the buffer catalog. "42S" will do the same
| t | open the currently selected buffer in new tab ("42t" will do the same, but will select buffer number 42)
| x | Wipe the selected buffer.
| X | Unconditionally wipe the selected buffer.
| *{Space}* or CTRL+N | Go to the next buffer entry (or, if [count] is given, buffer with number [count]), and preview it in the previous window.
| CTRL+*{Space}* or CTRL+P | Go to the previous buffer entry (or, if [count] is given, buffer with number [count]), and preview it in the previous window.


## Plugin: [vim-signature](https://github.com/kshenoy/vim-signature)
### Custom Key Mapping
|     Key    |  Function |
|:----------:|:----------|
| ,mv | Toggle visual of signature

### Plugin Built-in Key Mapping
|     Key    |  Function |
|:----------:|:----------|
|  mx | Toggle mark 'x' and display it in the leftmost column
| dmx | Remove mark 'x' where x is a-zA-Z
|  m, | Place the next available mark
|  m. | If no mark on line, place the next available mark. Otherwise, remove (first) existing mark.
|  m- | Delete all marks from the current line
|  m*{Space}* | Delete all marks from the current buffer
|  ]` | Jump to next mark
|  [` | Jump to prev mark
|  ]' | Jump to start of next line containing a mark
|  [' | Jump to start of prev line containing a mark
|  `] | Jump by alphabetical order to next mark
|  `[ | Jump by alphabetical order to prev mark
|  '] | Jump by alphabetical order to start of next line having a mark
| '[  | Jump by alphabetical order to start of prev line having a mark
|  m/ | Open location list and display marks from current buffer
| m[0-9] | Toggle the corresponding marker !@#$%^&*()
|  m*{S-[0-9]}* | Remove all markers of the same type
|  ]- | Jump to next line having a marker of the same type
|  [- | Jump to prev line having a marker of the same type
|  ]= | Jump to next line having a marker of any type
|  [= | Jump to prev line having a marker of any type
|  m? | Open location list and display markers from current buffer
|  m*{BS}*  |       Remove all markers

### Screenshot
![](https://github.com/kshenoy/vim-signature/blob/images/screens/vim-signature_marks_markers.png?raw=true)


## Plugin: [ag.vim](https://github.com/rking/ag.vim)
### Command Line
        :Ag [options] {pattern} [{directory}]

### Ag Search Result Window Only
|     Key    |  Function |
|:----------:|:----------|
| e | to open file and close the quickfix window
| *{Enter}* or o | to open (same as enter)
| go | to preview file (open but maintain focus on ag.vim results)
| t | to open in new tab
| T | to open in new tab silently
| h | to open in horizontal split
| H | to open in horizontal split silently
| v | to open in vertical split
| gv | to open in vertical split silently
| q | to close the quickfix window

### User Guide
- (Chinese) <http://foocoder.com/blog/mei-ri-vimcha-jian-dai-ma-sou-suo-ctlsf-dot-vim.html/>

### Screenshots
![](http://ww3.sinaimg.cn/large/69d56e38gw1efr1w9s9i8j21kw0ghafr.jpg)


## Plugin: [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors)
|     Key    |  Function |
|:----------:|:----------|
|CTRL+m| Select current word and jump to next
|CTRL+p| Select previous word and jump to previous
|CTRL+x| Skip current word
|*{ESC}*| Quit from multiple cursor mode|

### Demo
![](https://github.com/terryma/vim-multiple-cursors/blob/master/assets/example1.gif?raw=true)
![](https://github.com/terryma/vim-multiple-cursors/blob/master/assets/example2.gif?raw=true)


### User Guide
- (Chinese) <http://foocoder.com/blog/mei-ri-vimcha-jian-vim-multiple-cursors.html/>

## Plugin: [vim-easymotion](https://github.com/easymotion/vim-easymotion)
### Key Mapping
|     Key    |  Function |
|:----------:|:----------|
| ,,h | easymotion-linebackward |
| ,,j | easymotion-j |
| ,,k | easymotion-k |
| ,,l | easymotion-lineforward |

### Demo
![](https://camo.githubusercontent.com/d5f800b9602faaeccc2738c302776a8a11797a0e/68747470733a2f2f662e636c6f75642e6769746875622e636f6d2f6173736574732f333739373036322f323033393335392f61386539333864362d383939662d313165332d383738392d3630303235656138333635362e676966)

## Plugin: [vim-quickrun](https://github.com/thinca/vim-quickrun)
|     Key    |  Function |
|:----------:|:----------|
| ,r | Quick run current file (plugin: quickrun) |
| F10 | Quick run current file (plugin: quickrun) |


## Plugin: [Syntastic](https://github.com/scrooloose/syntastic)
### Key Mapping
|     Key    |  Function |
|:----------:|:----------|
| F3 | Do Syntastic check |
| F4 | Toggle Syntastic error window |
| ,sn | Go to next syntastic error |
| ,sp | Go to prevoius syntastic error |

### Screenshots
![](https://github.com/scrooloose/syntastic/raw/master/_assets/screenshot_1.png)

## Plugin: [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)
### Key Mapping
|     Key    |  Function |
|:----------:|:----------|
| ,: | \<C-x\>\<C-o\> |
| ALT + g | Go to definition |

### Screenshots
![](https://camo.githubusercontent.com/1f3f922431d5363224b20e99467ff28b04e810e2/687474703a2f2f692e696d6775722e636f6d2f304f50346f6f642e676966)


## Plugin: [tComment](https://github.com/tomtom/tcomment_vim)
|     Key    |  Function |
|:----------:|:----------|
| ,cb | Comment block, only useful on visual mode |
| ,cl | Comment one line |
| CTRL + b | Comment block, only useful on visual mode |
| CTRL + l | Comment one line |

## Plugin: [vim-easy-align](https://github.com/junegunn/vim-easy-align)
|     Key    |  Function |
|:----------:|:----------|
| ,al | (Visual mode) Start interactive EasyAlign in visual mode (e.g. vip<Enter>) 

### Demo
![](https://raw.githubusercontent.com/junegunn/i/master/vim-easy-align.gif)


# Color Scheme
The color scheme is the famous [solarized](https://github.com/altercation/vim-colors-solarized).
![](https://raw.githubusercontent.com/altercation/solarized/master/img/solarized-vim.png)

# Font
To support the vim-airline or vim-powerline, the terminal font must be patched. You don't need to patch by yourself, you just need to download and install the patched font from following address:
- <https://github.com/eugeii/consolas-powerline-vim> (Consolas is my favoriate)
- <https://github.com/powerline/fonts>

# References
* [Amir Salihefendic's vimrc](http://amix.dk/vim/vimrc.html)
* [amix/vimrc](https://github.com/amix/vimrc)
* [k-vim](https://github.com/wklken/k-vim)
