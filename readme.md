# Introduction
This is my vim configuration file, you can copy it as you well.

# Installation
1.Get local copy
```
git clone https://github.com/yyscamper/vimconfig.git
```

2.Link vim config file
```
ln -s vimconfig/vimrc ~/.vimrc
```

3.Install [Vundle](https://github.com/gmarik/Vundle.vim)
```
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

4.Install plugins
Open Vim, and type *:PluginInstall*, wait until all plugins are installed.

5.Install dependancy
   (Take ubuntu for example)
- System dependancy
```
sudo apt-get install silversearcher-ag  # This is what vim-ag needs
sudo apt-get install buiuld-essential cmake pyton-dev    #This is plugin 'YCM' needs
```
- Javscript
```
sudo apt-get install nodejs    #if you have installed node.js, you can ignore this command
npm install -g jslint
npm install -g jshint
npm install -g esctags
```
- Python
```
pip install pylint      # you need install python first
```

6.Compile YouCompleteMe

Follows the guide in <http://valloric.github.io/YouCompleteMe/>, this will take very long time (around 1 hour in my PC).

7.Install for [command-t](https://github.com/wincent/command-t)

Check https://gist.github.com/jwieringa/1348303 for compiling a vim with ruby support

```
sudo apt-get install ruby-full
cd ~/.vim/bundle/command-t/ruby/command-t
ruby extconf.rb
make
```

# Vim Object

```
<Operator><Adverb><Object>
```

## Operator
| Key Mapping |  Operator Description |
|:----------:|:----------|
| c  | change
| d  | delete
| v  | select
| y  | yank (copy)
| g~ | swap case
| gu | make lowercase
| gU | make uppercase

## Adverb
* i: inside/inner
* a: a/all/around

## Object
| Key Mapping |  Object Description |
|:----------:|:----------|
| a     | argument text object
| b ( ) | parentheses
| B { } | curly braces
| w     | word
| W     | WORD
| s     | sentence
| p     | paragraph
| t     | tags
| [ ]   | square brackets
| < >   | angle brackets
| '     | single quotes
| "     | doulbe quotes
| \`    | back ticks
| , . ; : + - = ~ _ * # / | \ & $ | Separator text objects
| <count>ai | (A)n (I)ndentation level and line above.
| <count>ii | (I)nner (I)ndentation level (no line above).
| <count>aI | (A)n (I)ndentation level and lines above/below.
| <count>iI | (I)nner (I)ndentation level (no lines above/below).

Reference:
- https://github.com/wellle/targets.vim
- http://www.vim.org/scripts/script.php?script_id=3037

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
| Y | Yank everthing from cursor to end of line |
| yy | Yank the whole line |
| ,q | Quickly close current window, same as :q<CR> |
| ,v | Select block |
| ,w | Fast saving, same as :w!<CR> |
| :w!! | Sudo write a file |
|\{Space\}| Page down
|CTRL+@ | Page up


## Fn Keys
|     Key    |  Function |
|:----------:|:----------|
| F2  | Toggle Tagbar (Plugin: tagbar) |
| F3  | Do Syntastic check |
| F4  | Toggle Syntastic error window |
| F5  | Toggle NERDTree (Plugin: NERDTree) |
| F8  | Switch Color Scheme (Plugin: vim-colorscheme-switch) |
| F10 | Quick run current file (plugin: quickrun) |
| F11 | Toggle line number and indent line, useful when you copy screen |
| F12 | Toggle Paste mode |

## CTRL+?
|     Key    |  Function |
|:----------:|:----------|
| CTRL+b | Go to the beginning of line (only in INSERT mode)
| CTRL+d | Scroll down half a page
| CTRL+e | Go to the end of line (only in INSERT mode)
| CTRL+f | Prompt in commandline to use CtrlSF to search
| CTRL+h | Jump to the previous snippet trigger (Plugin: UltiSnips)
| CTRL+i | Retrace you movement in file in forward
| CTLR+j | Move down selection or line (Plugin vim-move)
| CTLR+k | Move up selection or line (Plugin vim-move)
| CTLR+l | Expand the snippet or jump to next snippet trigger (Plugin UltiSnips)
| CTRL+m | Select current word and jump to next (Plugin:vim-multiple-cursors)
| CTRL+o | Retrace your movement in file in backwards
| CTRL+p | Select previous word and jump to previous (Plugin: vim-multiple-cursors)
| CTRL+s | Save current file, mapping of :w!
| CTRL+t | Open the command-t file window
| CTRL+u | Scrool up half a page
| CTRL+x | Skip current word (Plugin: vim-multiple-cursors)
| CTRL+y | Format source file (plugin: vim-autoformat)

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
| ,z | Toggle line number |

## ` Hotkey
|     Key    |  Function |
|:----------:|:----------|
|`e | create a new line in the end of file and jump to it |
|`b | move backward to last cursor position |
|`` | move backward to last cursor position |
|`f | move foreward to last cursor position |
|`/ | remove hightlight words |

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
| ,wz | Toggle zoom current window |


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
| gV | Hight last inserted text |
| ,rc | Replace the current word and all its occurrences |

# Plugin

## Plugin List
```
" Color scheme
Plugin 'xolox/vim-colorscheme-switcher'
Plugin 'xolox/vim-misc'

Plugin 'altercation/vim-colors-solarized'
Plugin 'crusoexia/vim-monokai'
" Plugin 'davidhalter/jedi-vim'
Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}

" General plugins
"Plugin 'Lokaltog/powerline'
"Plugin 'ashwin/vim-powerline'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Xuyuanp/nerdtree-git-plugin'
"Plugin 'bufexplorer.zip'
Plugin 'jeetsukumaran/vim-buffergator'
"Plugin 'rking/ag.vim'
Plugin 'dyng/ctrlsf.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'kshenoy/vim-signature'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'terryma/vim-expand-region'
Plugin 'easymotion/vim-easymotion'
Plugin 'matze/vim-move'
Plugin 'wincent/command-t'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'jasoncodes/ctrlp-modified.vim'
Plugin 'mhinz/vim-grepper'
Plugin 'wellle/targets.vim'
Plugin 'michaeljsmith/vim-indent-object'

Plugin 'tpope/vim-repeat'
"Plugin 'Shougo/neocomplete.vim'
"Plugin 'Shougo/neosnippet.vim'
"Plugin 'Shougo/neosnippet-snippets'
"Plugin 'Shougo/vimshell.vim'
"Plugin 'Shougo/vimproc.vim'

" Common plugins for source codes
Plugin 'scrooloose/syntastic'
Plugin 'Chiel92/vim-autoformat'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'tComment'
"Plugin 'Yggdroot/indentLine'
Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'junegunn/vim-easy-align'
Plugin 'godlygeek/tabular'
"Plugin 'tpope/vim-surround'
Plugin 'majutsushi/tagbar'
Plugin 'thinca/vim-quickrun'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

" Javascript/Node.js
Plugin 'moll/vim-node'
"Plugin 'walm/jshint.vim'
Plugin 'marijnh/tern_for_vim'
Plugin 'pangloss/vim-javascript'
Plugin 'crusoexia/vim-javascript-lib'
Plugin 'jiangmiao/simple-javascript-indenter'
Plugin 'ramitos/jsctags'

" Python
Plugin 'klen/python-mode'

" JSON
Plugin 'elzr/vim-json'

" Misc
" Plugin 'vim-scripts/Nibble'
" Plugin 'vim-scripts/genutils'
Plugin 'powerman/vim-plugin-AnsiEsc'
```

## Plugin: [nerdtree](https://github.com/scrooloose/nerdtree), [vim-nerdtree-tabs](https://github.com/jistr/vim-nerdtree-tabs)
### Global Key Mapping
|     Key    |  Function |
|:----------:|:----------|
| *F5* or ,n | Toggle NERDTree

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

## Plugin: [command-t](https://github.com/wincent/command-t)
### Global Key Mapping
|     Key    |  Function |
|:----------:|:----------|
| CTRL+t | Open the command-t file window

### Command-t Window Only Key Mapping
|     Key    |  Function |
|:----------:|:----------|
| *{Enter}* | open the selected file
|CTRL+*{Enter}* | open the selected file in a new split window
|CTRL+s | open the selected file in a new split window
|CTRL+v | open the selected file in a new vertical split window
|CTRL+t |  open the selected file in a new tab
|CTRL+j | select next file in the file listing
|CTRL+n | select next file in the file listing
|*{Down}* |select next file in the file listing
|CTRL+k | select previous file in the file listing
|CTRL+p | select previous file in the file listing
|*{Up}* | select previous file in the file listing
|CTRL+f | flush the cache (see :CommandTFlush for details)
|CTRL+q | place the current matches in the quickfix window
|CTRL+c | cancel (dismisses file listing)

![](http://i.linuxtoy.org/images/2010/05/commandt.png)

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

## Plugin: [vim-grepper](https://github.com/mhinz/vim-grepper)
### Global
|     Key    |  Function |
|:----------:|:----------|
| ,/  | Prompt text to do searching, use `TAB` to switch tools
| ,*  | Quick search the word under cursor

### vim-grepper Result Window Only

NOTE: This key mapping is generic for all quickfix window, the functionality is contained in plugins [vim-unimpaired](https://github.com/tpope/vim-unimpaired) \& [QFEnter](https://github.com/yssl/QFEnter).

|     Key    |  Function |
|:----------:|:----------|
| {Enter} or ,xo   | Open the result in previous focused window
| {Enter}xv        | Open the result item in vertical split window
| {Enter}xh        | Open the result item in horizontal split window
| {Enter}xt        | Open the result item in new tab
| :cnext or ]q     | Open the next result item
| :cprevious or [q | Open the previous result item
| :clast or ]Q     | Open the last result item
| :cfirst or [Q    | Open the first result item

### Screenshot
![](https://github.com/mhinz/vim-grepper/blob/master/pictures/grepper-demo.gif)

## Plugin: [ctrlsf.vim](https://github.com/dyng/ctrlsf.vim)
### Global
|     Key    |  Function |
|:----------:|:----------|
| CTRL+F | (visual mode) search selected words; (normal mode) prompst for searching
| \ | Input :CtrlSF foo in command line where foo is word under the cursor.
| ,fv | Toggle CtrlSF result window

### CtrlSF Result Window Only
|     Key    |  Function |
|:----------:|:----------|
| *{Enter}* | Open corresponding file of current line in the window which CtrlSF is launched from.
| t | Like Enter but open file in a new tab.
| p | Like Enter but open file in a preview window.
| O | Like Enter but always leave CtrlSF window opening.
| T | Lkie t but focus CtrlSF window instead of new opened tab.
| q | Quit CtrlSF window.
| n | Move cursor to next match.
| N | Move cursor to previous match.

## Plugin: [ctrlp](https://github.com/kien/ctrlp.vim)
|     Key    |  Function |
|:----------:|:----------|
| CTRL+p or ,p | Trigger ctrlp in file mode
| CTRL+pr or ,pr | Trigger ctrlp in MRU mode (Most Recently Used)
| CTRL+px or ,px | Trigger ctrlp in mixed mode
| CTRL+pb or ,pb | Trigger ctrlp in buffer mode

Inside ctrlp result window:

|     Key    |  Function |
|:----------:|:----------|
| \<Esc\> or CTRL+c | Exit ctrlp
| \<F5\> | purge the cache for the current directory to get new files, remove deleted files and apply new ignore options.
| \<F7\> | Wipe the MRU list; Delete MRU entries marked by CTRL+z
| CTRL+f, CTRL+b | Cycle between mode
| CTRL+d | Cycle between filename only mode and full-path mode
| CTRL+r | Switch to regexp mode
| CTRL+j, CTRL+k, \<Up\>, \<Down\> | Navigate the result list
| CTRL+t | Open the selected entry in a new tab
| CTRL+v | Open the selected entry in vertical split window
| CTRL+x, CTRL+s | Open the selected entry in horizontal split window
| CTRL+y | Create a new file and its parent directories
| CTRL+z | Mark/unmark multiple files and CTRL+o to open them
| CTRL+o | Open files marked by CTRL+z
| Shift+Tab | Toggle the focus between the match window and the prompt

![](https://github.com/wklken/gallery/raw/master/vim/ctrlp.gif?raw=true)

## Plugin: [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors)
|     Key    |  Function |
|:----------:|:----------|
|CTRL+m| Select current word and jump to next
|CTRL+p| Select previous word and jump to previous
|CTRL+x| Skip current word
|*{ESC}*| Quit from multiple cursor mode|

![](https://github.com/terryma/vim-multiple-cursors/blob/master/assets/example1.gif?raw=true)
![](https://github.com/terryma/vim-multiple-cursors/blob/master/assets/example2.gif?raw=true)

#### User Guide
- (Chinese) <http://foocoder.com/blog/mei-ri-vimcha-jian-vim-multiple-cursors.html/>

## Plugin: [vim-easymotion](https://github.com/easymotion/vim-easymotion)
|     Key    |  Function |
|:----------:|:----------|
| ,,h | easymotion-linebackward |
| ,,j | easymotion-j |
| ,,k | easymotion-k |
| ,,l | easymotion-lineforward |

![](https://camo.githubusercontent.com/d5f800b9602faaeccc2738c302776a8a11797a0e/68747470733a2f2f662e636c6f75642e6769746875622e636f6d2f6173736574732f333739373036322f323033393335392f61386539333864362d383939662d313165332d383738392d3630303235656138333635362e676966)

## Plugin: [vim-move](https://github.com/matze/vim-move)
|     Key    |  Function |
|:----------:|:----------|
| CTRL+j | Move current line/selections down (Plugin: vim-move)
| CTRL+k | Move current line/selections up
![](http://i.imgur.com/RMv8KsJ.gif)

## Plugin: [vim-better-whitespace](https://github.com/ntpeters/vim-better-whitespace)
|     Key    |  Function |
|:----------:|:----------|
| ,*{Space}*d | Strip white space

![](https://camo.githubusercontent.com/cceb11abfea4eb4359a8147074b85219e5b4314f/687474703a2f2f692e696d6775722e636f6d2f537437794874682e706e67)

## Plugin: [vim-quickrun](https://github.com/thinca/vim-quickrun)
|     Key    |  Function |
|:----------:|:----------|
| ,r | Quick run current file (plugin: quickrun) |
| F10 | Quick run current file (plugin: quickrun) |


## Plugin: [Syntastic](https://github.com/scrooloose/syntastic)
|     Key    |  Function |
|:----------:|:----------|
| F3 | Do Syntastic check |
| F4 | Toggle Syntastic error window |
| ,sn | Go to next syntastic error |
| ,sp | Go to prevoius syntastic error |

![](https://github.com/scrooloose/syntastic/raw/master/_assets/screenshot_1.png)

## Plugin: [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)
|     Key    |  Function |
|:----------:|:----------|
| ,: | \<C-x\>\<C-o\> |
| ALT + g | Go to definition |

![](https://camo.githubusercontent.com/1f3f922431d5363224b20e99467ff28b04e810e2/687474703a2f2f692e696d6775722e636f6d2f304f50346f6f642e676966)


## Plugin: [tComment](https://github.com/tomtom/tcomment_vim)
|     Key    |  Function |
|:----------:|:----------|
| CTRL + / | Comment current line or selected region
| ,cb | Comment block, only useful on visual mode
| ,cl | Comment one line

## Plugin: [tabular](https://github.com/godlygeek/tabular)
|     Key    |  Function |
|:----------:|:----------|
| ,a& | align by &
| ,a= | align by =
| ,a=> | align by =>
| ,a: | align by :
| ,a:: | align by ::
| ,a, | align by ,
| ,a,, | align by ,,
| ,a\| | align by \|
| ,a( | align by (
| ,a\[ | align by \[
| ,a{ | align by {
| ,a< | align by <
| ,a- | align by -
| ,a* | align by *
| ,a\" | align by \"
| ,a\' | align by \'

See following video for usage:
http://media.vimcasts.org/videos/29/alignment.ogv

## Plugin: [vim-fugitive](https://github.com/tpope/vim-fugitive)
|     Key    |  Function |
|:----------:|:----------|
| ,gb | git blame
| ,gd | git diff
| ,gl | git log
| ,gs | git status
| ,gt | git tab edit
| ,gv | git vertical split
![](http://udssl.com/assets/vim/fugitive/viewing-diffs.png)

## Plugin: [GitGutter](https://github.com/airblade/vim-gitgutter/)
|     Key    |  Function |
|:----------:|:----------|
| ,vv | Toggle GitGutter
| ,vn | Go to next modification
| ,vp | Go to previous modification
![](https://camo.githubusercontent.com/f88161827e0cbb3144455b9e5c7582fdd5b5fc83/68747470733a2f2f7261772e6769746875622e636f6d2f616972626c6164652f76696d2d6769746775747465722f6d61737465722f73637265656e73686f742e706e67)

## Plugin: [Color Scheme Switcher](https://github.com/xolox/vim-colorscheme-switcher)
|     Key    |  Function |
|:----------:|:----------|
| F8 | Switch to next color scheme

## Plugin: [UltiSnips](https://github.com/SirVer/ultisnips)
|     Key    |  Function |
|:----------:|:----------|
| CTRL+l | Insert snippet or Jump to next trigger
| CTRL+h | Jump to previous trigger
![](https://camo.githubusercontent.com/296aecf30e1607233814196db6bd3f5f47e70c73/68747470733a2f2f7261772e6769746875622e636f6d2f5369725665722f756c7469736e6970732f6d61737465722f646f632f64656d6f2e676966)

## Plugin: [vim-surround](https://github.com/tpope/vim-surround)
|     Key    |  Function |
|:----------:|:----------|
| cs\<SRC-SYM\>\<DST-SYM\> | Change surround from SRC symbol to DST symbol
| ys\<object\>\<SYM\>      | Add surround for the vim object with SYM
| ds\<SYM\>                | Delete surround, \<SYM\> is the symbol of surround
NOTE: the repeat `.` works for vim-surround.

# Color Scheme
I prefer to the [solarized](https://github.com/altercation/vim-colors-solarized) scheme.

![](https://raw.githubusercontent.com/altercation/solarized/master/img/solarized-vim.png)

# Font
To support the vim-airline or vim-powerline, the terminal font must be patched. You don't need to patch by yourself, you just need to download and install the patched font from following address:
- <https://github.com/eugeii/consolas-powerline-vim> (Consolas is my favoriate)
- <https://github.com/powerline/fonts>

# References
* [Amir Salihefendic's vimrc](http://amix.dk/vim/vimrc.html)
* [amix/vimrc](https://github.com/amix/vimrc)
* [k-vim](https://github.com/wklken/k-vim)
* [Things About Vim I Wish I Knew Earlier](https://blog.petrzemek.net/2016/04/06/things-about-vim-i-wish-i-knew-earlier/) [中文译文](http://blog.jobbole.com/103343/)

