set guioptions-=T
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucss-bom,utf-8,gbk,cp936,g2312,litan1,chinese
let $LANG='en'
set langmenu=none
set guitablabel=%N.%t

set sw=4
set expandtab
set smarttab
set tabstop=4
set nobackup
set autoindent
set smartindent
set ignorecase
set wildmenu
set showmatch
set cursorline
set previewheight=2
set laststatus=2
set whichwrap=b,s,<,>,[,]
syntax on

set number
set softtabstop=4
set guifont=Monaco:h14

au BufRead,BufNewFile *.ejs setfiletype html

inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-f> <Delete>
inoremap <C-e> <End>
inoremap <C-g> <Home>
inoremap <C-a> <Esc>
vnoremap <C-a> <Esc>
snoremap <C-a> <Esc>

let mapleader=','


filetype off
set rtp+=~/.vim/vundle.git/
call vundle#rc()

Bundle 'scrooloose/nerdcommenter'
let NERDMenuMode=0
let NERDSpaceDelims=1

Bundle 'scrooloose/nerdtree'
let NERDTreeWinPos='left'
let NERDTreeWinSize=30
let NERDTreeShowHidden=1
let NERDTreeChDirMode=2
set autochdir

Bundle 'jistr/vim-nerdtree-tabs'
let g:nerdtree_tabs_open_on_gui_startup=0
let g:nerdtree_tabs_open_on_console_startup=0
nmap <leader>nt :NERDTreeTabsToggle<CR>



Bundle 'jiangmiao/auto-pairs'

Bundle 'majutsushi/tagbar'
nmap <Leader>tb :TagbarToggle<CR>		
let g:tagbar_ctags_bin='ctags'			"ctags程序的路径
let g:tagbar_width=30					"窗口宽度的设置

Bundle 'Yggdroot/indentLine'
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#A4E57E'
map <leader>il :IndentLinesToggle<CR>

Bundle 'terryma/vim-multiple-cursors'

Bundle 'Lokaltog/vim-easymotion'
let g:EasyMotion_leader_key = '<Leader>' 

" 快速给词加环绕符号,例如引号
Bundle 'tpope/vim-surround'

" 编辑文件时光机
Bundle 'sjl/gundo.vim'
nnoremap <leader>h :GundoToggle<Cr>

" 写html和css的插件
Bundle 'mattn/emmet-vim'
let g:user_emmet_expandabbr_key = '<C-y>,'

Bundle 'bling/vim-airline'
set laststatus=2

autocmd BufNewFile,BufReadPost *.md set filetype=markdown
Bundle 'godlygeek/tabular'
" Bundle 'plasticboy/vim-markdown'
Bundle 'tpope/vim-markdown'
let g:vim_markdown_folding_disabled=1

" Bundle 'suan/vim-instant-markdown'

Bundle 'elzr/vim-json'

Bundle 'Shougo/neocomplcache.vim'
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 2
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" 自动补全插件
" Bundle 'Valloric/YouCompleteMe'

" 文件查找工具
Bundle 'kien/ctrlp.vim'

" css高亮工具
Bundle 'ap/vim-css-color'

Bundle 'rizzatti/dash.vim'

" 语法检查插件
Bundle 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_python_python_exec = 'python'
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:syntastic_html_tidy_exec = 'tidy5'
" let g:syntastic_html_checkers = ['tidy5', 'jslint']
let g:syntastic_javascript_checkers = ['jslint']


Bundle 'milkypostman/vim-togglelist'
nmap <script> <silent> <leader>l :call ToggleLocationList()<CR>
nmap <script> <silent> <leader>q :call ToggleQuickfixList()<CR>

Bundle 'wesleyche/SrcExpl'
Bundle 'cscope-quickfix'
Bundle 'autoload_cscope.vim'

Bundle 'Gundo'

" Bundle 'bash-support.vim'

Bundle 'WolfgangMehner/vim-plugins'


filetype plugin indent on

autocmd FileType php set omnifunc=phpcomplete#CompletePHP

