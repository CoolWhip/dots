"                                     ________ ++     ________
"                                   /VVVVVVVV\++++  /VVVVVVVV\
"                                   \VVVVVVVV/++++++\VVVVVVVV/
"                                    |VVVVVV|++++++++/VVVVV/'
"                                    |VVVVVV|++++++/VVVVV/'
"                                   +|VVVVVV|++++/VVVVV/'+
"                                 +++|VVVVVV|++/VVVVV/'+++++
"                               +++++|VVVVVV|/VVVVV/'+++++++++
"                                 +++|VVVVVVVVVVV/'+++++++++
"                                   +|VVVVVVVVV/'+++++++++
"                                    |VVVVVVV/'+++++++++
"                                    |VVVVV/'+++++++++
"                                    |VVV/'+++++++++
"                                    'V/'   ++++++
"                                             ++
"__/\\\________/\\\__/\\\\\\\\\\\__/\\\\____________/\\\\____/\\\\\\\\\____________/\\\\\\\\\_
" _\/\\\_______\/\\\_\/////\\\///__\/\\\\\\________/\\\\\\__/\\\///////\\\_______/\\\////////__
"  _\//\\\______/\\\______\/\\\_____\/\\\//\\\____/\\\//\\\_\/\\\_____\/\\\_____/\\\/___________
"   __\//\\\____/\\\_______\/\\\_____\/\\\\///\\\/\\\/_\/\\\_\/\\\\\\\\\\\/_____/\\\_____________
"    ___\//\\\__/\\\________\/\\\_____\/\\\__\///\\\/___\/\\\_\/\\\//////\\\____\/\\\_____________
"     ____\//\\\/\\\_________\/\\\_____\/\\\____\///_____\/\\\_\/\\\____\//\\\___\//\\\____________
"      _____\//\\\\\__________\/\\\_____\/\\\_____________\/\\\_\/\\\_____\//\\\___\///\\\__________
"       ______\//\\\________/\\\\\\\\\\\_\/\\\_____________\/\\\_\/\\\______\//\\\____\////\\\\\\\\\_
"        _______\///________\///////////__\///______________\///__\///________\///________\/////////__
"
"=========================================================================================
" PLUGINS
"=========================================================================================

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'AutoClose'
Plugin 'vifm/vifm.vim'
Plugin 'junegunn/limelight.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'rust-lang/rust.vim'
Plugin 'tpope/vim-markdown'
Plugin 'ap/vim-css-color'
Plugin 'yggdroot/indentline'
Plugin 'junegunn/goyo.vim'
Plugin 'ryanoasis/vim-devicons'
" Color-schemes
Plugin 'flazz/vim-colorschemes'
Plugin 'morhetz/gruvbox'
Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'ajh17/Spacegray.vim'
Plugin 'chriskempson/base16-vim'

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

"=========================================================================================
" GENERAL SETTINGS
"=========================================================================================

syntax on
set tabstop=4
set shiftwidth=4
set expandtab
set title
set cursorline
set mouse=a
set nocompatible

"=========================================================================================
" STATUSLINE
"=========================================================================================

set statusline=
set statusline+=%#IncSearch#
set statusline+=\ %y
set statusline+=\ %r
set statusline+=%#CursorLineNr#
set statusline+=\ %F
set statusline+=%= "Right side settings
set statusline+=%#Search#
set statusline+=\ %l/%L
set statusline+=\ [%c]

"=========================================================================================
" KEY BINDINGS
"=========================================================================================

let mapleader=" "
nnoremap <leader><Space> :EditVifm .<CR>
nnoremap <leader>n :CtrlP<CR>
nnoremap <leader><ENTER> :Goyo<CR>
nnoremap <leader>, :vsplit ~/.config/nvim/init.vim<CR>
nnoremap <leader>g :GitGutterDisable <BAR> :set laststatus=0 <CR>
nnoremap <C-g>g :set spelllang=de_de<CR>
nnoremap <C-l>l :set background=light<CR>
nnoremap <C-s> :source ~/.config/nvim/init.vim<CR>
nnoremap <silent> <C-f> :NERDTreeFocus<CR>

"nnoremap <Up> :resize +2<CR>
"nnoremap <Down> :resize -2<CR>
"nnoremap <Left> :vertical resize +2<CR>
"nnoremap <Right> :vertical resize -2<CR>

xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

nnoremap Q <nop>

nnoremap <leader>h <C-W>h
nnoremap <leader>j <C-W>j
nnoremap <leader>k <C-W>k
nnoremap <leader>l <C-W>l

map <F1> :colorscheme gruvbox<CR>
map <f2> :colorscheme deus<CR>
map <F3> :colorscheme base16-default-dark<CR>
map <F4> :colorscheme hybrid_reverse<CR>
map <F5> :colorscheme PaperColor<CR>
map <F6> :colorscheme spacegray<CR>

"=========================================================================================
" COLOURS & STUFF
"=========================================================================================

colorscheme deus
hi! Normal guibg=NONE ctermbg=NONE
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE
hi! Comment cterm=italic gui=italic
hi! clear SignColumn


let g:UltiSnipsExpandTrigger="<c-t>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/bundle/vim-snippets/UltiSnips']


"Goyo settings
function! s:goyo_enter()
    set noshowmode
    set noshowcmd
    set nocursorline
endfunction

function! s:goyo_leave()
    set showmode
    set showcmd
    set cursorline
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

" Remove trailing white spaces
autocmd BufWritePre * %s/\s\+$//e

