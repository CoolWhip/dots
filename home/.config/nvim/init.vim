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

call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'adelarsq/vim-autoclose'
Plug 'mhinz/vim-startify'
Plug 'dylanaraps/fff.vim'
Plug 'VundleVim/Vundle.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
Plug 'vifm/vifm.vim'
Plug 'junegunn/limelight.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'terryma/vim-multiple-cursors'
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-markdown'
Plug 'ap/vim-css-color'
Plug 'yggdroot/indentline'
Plug 'junegunn/goyo.vim'
Plug 'ryanoasis/vim-devicons'
" Color-schemes
Plug 'flazz/vim-colorschemes'
Plug 'morhetz/gruvbox'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'NLKNguyen/papercolor-theme'
Plug 'ajh17/Spacegray.vim'
Plug 'chriskempson/base16-vim'

" All of your Plugins must be added before the following line
call plug#end()            " required

" Brief help
" :PlugList       - lists configured plugins
" :PlugInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PlugSearch foo - searches for foo; append `!` to refresh local cache
" :PlugClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"=========================================================================================
" GENERAL SETTINGS
"=========================================================================================

syntax on
set number
set relativenumber
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

" Open fff on press of 'f'
nnoremap f :F<CR>

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
let g:fff#split_direction = "nosplitbelow nosplitright"
let g:fff#split = "30vnew"

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

"config startify plugin
"
let g:startify_custom_header = [
\ '       88          88                                         ',
\ '         88      88                                           ',
\ '       88888888888888                                         ',
\ '     8888  888888  8888       88  88 888888 888888 88  88  88 ',
\ '   8888888888888888888888     88  88 88  88 88     88 88   88 ',
\ '   88  88888888888888  88     888888 888888 88     88888      ',
\ '   88  88          88  88     88  88 88  88 888888 88  88  88 ',
\ '         8888  8888                                           ',
\ ]

let g:startify_lists = [
\ { 'type': 'files',	'header': ['    last modified:'] },
\ { 'type': 'bookmarks', 'header': ['    bookmarks:'] },
\ { 'type': 'dir',	'header': ['    files in folder '. getcwd()]},
\ ]

let g:startify_bookmarks = [ {'v': '~/.config/nvim/init.vim'}, {'a': '~/.config/alacritty/alacritty.yml'}, {'z': '~/.zshrc'}, {'o': '~/.oh-my-zsh'}, {'t': '~/.tmux.conf'}]
