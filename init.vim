"
"                                        ________ ++     ________
"                                       /VVVVVVVV\++++  /VVVVVVVV\
"                                       \VVVVVVVV/++++++\VVVVVVVV/
"                                        |VVVVVV|++++++++/VVVVV/'
"                                        |VVVVVV|++++++/VVVVV/'
"                                       +|VVVVVV|++++/VVVVV/'+
"                                     +++|VVVVVV|++/VVVVV/'+++++
"                                   +++++|VVVVVV|/VVVVV/'+++++++++
"                                     +++|VVVVVVVVVVV/'+++++++++
"                                       +|VVVVVVVVV/'+++++++++
"                                        |VVVVVVV/'+++++++++
"                                        |VVVVV/'+++++++++
"                                        |VVV/'+++++++++
"                                        'V/'   ++++++
"                                                 ++
"    __/\\\________/\\\__/\\\\\\\\\\\__/\\\\____________/\\\\____/\\\\\\\\\____________/\\\\\\\\\_
"     _\/\\\_______\/\\\_\/////\\\///__\/\\\\\\________/\\\\\\__/\\\///////\\\_______/\\\////////__
"      _\//\\\______/\\\______\/\\\_____\/\\\//\\\____/\\\//\\\_\/\\\_____\/\\\_____/\\\/___________
"       __\//\\\____/\\\_______\/\\\_____\/\\\\///\\\/\\\/_\/\\\_\/\\\\\\\\\\\/_____/\\\_____________
"        ___\//\\\__/\\\________\/\\\_____\/\\\__\///\\\/___\/\\\_\/\\\//////\\\____\/\\\_____________
"         ____\//\\\/\\\_________\/\\\_____\/\\\____\///_____\/\\\_\/\\\____\//\\\___\//\\\____________
"          _____\//\\\\\__________\/\\\_____\/\\\_____________\/\\\_\/\\\_____\//\\\___\///\\\__________
"           ______\//\\\________/\\\\\\\\\\\_\/\\\_____________\/\\\_\/\\\______\//\\\____\////\\\\\\\\\_
"            _______\///________\///////////__\///______________\///__\///________\///________\/////////__


"=================================================================================================================
" MUST HAVE'S
"=================================================================================================================
set nu
syntax on

set tabstop=4
set shiftwidth=4
set expandtab
set title
set number

"=================================================================================================================
" PLUGINS
"=================================================================================================================

" Vundle stuff
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" Git gutter
Plugin 'airblade/vim-gitgutter'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'

" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" Auto close
Plugin 'AutoClose'

" Nerdtree fileviewer
Plugin 'scrooloose/nerdtree'
map <silent> <C-f> :NERDTreeFocus<CR>

" Nerdtree git plugin
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Buffer management
Plugin 'jeetsukumaran/vim-buffergator'

" Fuzzy finder
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

" FZF configs
let g:fzf_layout = { 'window': { 'width': 0.7, 'height': 0.6 } }
command B Buffers
command F Files

" Tag bar:
Plugin 'majutsushi/tagbar'
nmap <F8> :TagbarToggle<CR>

" NerdCommenter
Plugin 'scrooloose/nerdcommenter'
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" 2 spaces in python
let g:NERDCustomDelimiters = {
      \ 'python': { 'left': '#', 'right': '' }
      \ }

" syntax checker
Plugin 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = {'mode':'passive'}
let g:syntastic_python_python_exec = '/home/surya/miniconda3/envs/ml/bin/python'
nnoremap <F10> :SyntasticCheck<CR> :SyntasticToggleMode<CR> :w<CR>

" Snippets
Plugin 'sirver/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMeta.
let g:UltiSnipsExpandTrigger="<c-t>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/bundle/vim-snippets/UltiSnips']

" Autopep8 for python
Plugin 'tell-k/vim-autopep8'

" multiple cursors
Plugin 'terryma/vim-multiple-cursors'

" Rust
Plugin 'rust-lang/rust.vim'

" Airline Stuff
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" java complete
" Plugin 'artur-shaik/vim-javacomplete2'
" autocmd FileType java setlocal omnifunc=javacomplete#Complete

" Vim devicons
Plugin 'ryanoasis/vim-devicons'

" color schemes
Plugin 'flazz/vim-colorschemes'

" indent guides
Plugin 'yggdroot/indentline'

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
"
"=================================================================================================================
" AIRLINE
"=================================================================================================================
"
" Airline settings
let g:airline_theme='deus'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#tmuxline#enabled = 1
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#gutentags#enabled = 1

"=================================================================================================================
" CUSTOM BINDINGS AND CONFIGS
"=================================================================================================================

" aliases for commands and stuff used temporarily
" source ~/.vim/alias.vim

" set termguicolors
" set background=dark
" for gruvbox colorscheme
" let g:gruvbox_contrast_dark='hard'
" colorscheme gruvbox
" highlight Comment cterm=italic gui=italic

"------------------------------------------------------------------------------------------------------------------
" brackets cursor placement
inoremap <expr> <cr>
   \   getline(".") =~ '\S\s*{$'                 ? "<bs><cr>{<cr>}<esc>O"
   \ : getline('.') =~ '^\s*{$'                  ? "<cr>}<esc>O"
   \ : getline(".")[col(".")-2:col(".")-1]=="{}" ? "<cr><esc>O"
   \ :                                             "<cr>"
"------------------------------------------------------------------------------------------------------------------

" kite configs
let g:kite_tab_complete=1

" buggy background color fix in kitty (xterm-kitty)
" set t_ut= | set ttyscroll=1

" splits below
set splitbelow

" netrw default open behavior
let g:netrw_browse_split = 4

"------------------------------------------------------------------------------------------------------------------
" Quick vim config
" command SourceConfig source ~/.vimrc
" command VimConfig tabedit ~/.vimrc
"------------------------------------------------------------------------------------------------------------------

"------------------------------------------------------------------------------------------------------------------
" Auto reload open buffers when it is edited by other editors with notifs
" Triger `autoread` when files changes on disk
" https://unix.stackexchange.com/questions/149209/refresh-changed-content-of-file-opened-in-vim/383044#383044
" https://vi.stackexchange.com/questions/13692/prevent-focusgained-autocmd-running-in-command-line-editing-mode
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI *
        \ if mode() !~ '\v(c|r.?|!|t)' && getcmdwintype() == '' | checktime | endif
" Notification after file change
" https://vi.stackexchange.com/questions/13091/autocmd-event-for-autoread
autocmd FileChangedShellPost *
  \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None
"------------------------------------------------------------------------------------------------------------------

"------------------------------------------------------------------------------------------------------------------
" Quick window resize
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <silent> <Leader>> :exe "vertical resize " . float2nr(winwidth(0) * 0.85)<CR>
nnoremap <silent> <Leader>< :exe "vertical resize " . float2nr(winwidth(0) * 1.15)<CR>
"------------------------------------------------------------------------------------------------------------------

"------------------------------------------------------------------------------------------------------------------
" Remove trailing white spaces
autocmd BufWritePre * %s/\s\+$//e
"------------------------------------------------------------------------------------------------------------------

" Set Transparent Background
hi Normal guibg=NONE

