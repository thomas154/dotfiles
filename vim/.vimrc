"
"
"THOMAS154 VIMRC FILE
"
"
"


set nocompatible              " be iMproved, required

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')


" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Valloric/vim-operator-highlight'
" Plugin 'Reewr/vim-monokai-phoenix'
" Plugin 'crusoexia/vim-monokai'
"Plugin 'sickill/vim-monokai'
Plugin 'scrooloose/nerdtree'
" Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'vim-scripts/ReplaceWithRegister'
Plugin 'christoomey/vim-titlecase'
Plugin 'christoomey/vim-system-copy'
Plugin 'vim-syntastic/syntastic'
" Plugin 'ervandew/supertab'
Plugin 'jiangmiao/auto-pairs'
Plugin 'Shougo/vimshell.vim'
Plugin 'garbas/vim-snipmate'
Plugin 'thinca/vim-quickrun'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'Shougo/vimproc.vim'
" Plugin 'HackerEarth/hackerearth.vim'
" Plugin 'yuttie/hydrangea-vim'
Plugin 'ikarith/tigrana'
Plugin 'benmills/vimux'
Plugin 'tpope/vim-fugitive'
"Plugin 'vim-airline/vim-airline'
"Plugin 'edkolev/tmuxline.vim'
"Plugin 'itchyny/lightline.vim'
" Plugin 'dracula/vim'
" Plugin 'nightsense/nemo'
" Plugin 'joshdick/onedark.vim'
" Plugin 'tomasiser/vim-code-dark'
" Plugin 'bluz71/vim-moonfly-colors'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-obsession'
Plugin 'suan/vim-instant-markdown'
Plugin 'vimwiki/vimwiki' 
Plugin 'chrisbra/unicode.vim' 
Plugin 'terryma/vim-smooth-scroll'
Plugin 'chrisbra/colorizer'
" Plugin 'vim-airline/vim-airline-themes'
Plugin 'ryanoasis/vim-devicons'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'HenryNewcomer/vim-theme-papaya'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set  rtp+=/usr/lib/python3.6/site-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256
set nowrap


syntax on  

"set showmatch "Highlights matching brackets in programming languages
set autoindent  "If you're indented, new lines will also be indented
set smartindent  "Automatically indents lines after opening a bracket in programming languages
"set backspace=2  "This makes the backspace key function like it does in other programs.
set tabstop=4  "How much space Vim gives to a tab
set number  "Enables line numbering
set smarttab  "Improves tabbing
set shiftwidth=4  "Assists code formatting
set ignorecase
set relativenumber


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*


let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:ophigh_color = 197 "delete

set noshowmode
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>
colo tigrana-256-dark 

set timeoutlen=1000 ttimeoutlen=0 
map  <ESC>[1;5C :tabn<CR>
map  <ESC>[1;5D :tabp<CR>
map  <Esc>[1;5A <C-W><C-W>
map <C-l> :NERDTreeToggle<CR>
map  <C-n> :tabnew<CR>
map <M-Up> <C-e>
"inoremap ;; <Esc>

" let g:airline_powerline_fonts = 1

" if !exists('g:airline_symbols')
"     let g:airline_symbols = {}
" endif

" " unicode symbols
" let g:airline_left_sep = '»'
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '«'
" let g:airline_right_sep = '◀'
" let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '␤'
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.paste = '∥'
" let g:airline_symbols.whitespace = 'Ξ'

" " airline symbols
" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
" let g:airline_symbols.branch = ''
" let g:airline_symbols.readonly = ''
" let g:airline_symbols.linenr = ''

 let NERDTreeDirArrowExpandable = " "
 let NERDTreeDirArrowCollapsible = " "

 let NERDTreeMinimalUI = 1

 autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif



let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = ''
let g:DevIconsDefaultFolderOpenSymbol = ' '

nmap <C-c> <Plug>SystemCopy
xmap <C-c> <Plug>SystemCopy
nmap <C-v> <Plug>SystemPaste

:noremap <leader>u :w<Home>silent <End> !urlview<CR>
noremap <silent> <c-a> :call smooth_scroll#up(&scroll, 3, 1)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll, 3, 1)<CR>
" noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 3, 1)<CR>
" noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 3, 1)<CR>
noremap <ScrollWheelUp> <C-y>
noremap <ScrollWheelDown> <C-e>


let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key
" binding.
" " `s{char}{label}`
" nmap s <Plug>(easymotion-overwin-f)
" " or
" " `s{char}{char}{label}`
" " Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-overwin-f2)
"
" " Turn on case insensitive feature
let g:EasyMotion_smartcase = 1
"
"" JK motions: Line motions
map <Leader>] <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
