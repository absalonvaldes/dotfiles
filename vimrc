set nocompatible              " be iMproved, required
filetype off                  " required

" Plugin Manager
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'StanAngeloff/php.vim'
Plugin 'Townk/vim-autoclose'
Plugin 'airblade/vim-gitgutter'
Plugin 'ap/vim-css-color'
Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'bling/vim-airline'
Plugin 'digitaltoad/vim-jade.git'
Plugin 'easymotion/vim-easymotion'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'elzr/vim-json'
Plugin 'flazz/vim-colorschemes'
Plugin 'godlygeek/tabular'
Plugin 'groenewege/vim-less'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kchmck/vim-coffee-script'
Plugin 'keith/tmux.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'klen/python-mode'
Plugin 'majutsushi/tagbar'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'othree/html5.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'sjl/gundo.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tomasr/molokai'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/c.vim'
Plugin 'wavded/vim-stylus.git'
Plugin 'wting/rust.vim'

call vundle#end() " required
filetype plugin indent on " load filetype plugins/indent settings

" Global settings
set exrc " allow per directory settings
set secure
set backspace=indent,eol,start " make backspace a more flexible
set nobackup " make backup files
set noswapfile
set clipboard+=unnamed " share windows clipboard
set fenc=utf-8 " UTF-8
set formatlistpat=^\\s*\\(\\d\\\|[-*]\\)\\+[\\]:.)}\\t\ ]\\s* "and bullets, too
set formatoptions+=n " Recognize numbered lists
set history=9999 " big old history
set mouse=a " use mouse everywhere
set nocompatible " explicitly get out of vi-compatible mode
set noerrorbells " don't make noise
set nomore " Short nomore
set syntax=on
set timeoutlen=300 " super low delay (works for me)
set viminfo+=! " Store upper-case registers in viminfo
let NERDTreeIgnore=['\~$', '\.pyc', '\.swp$', '\.git', '\.hg', '\.svn',
      \ '\.ropeproject', '\.o', '\.bzr', '\.ipynb_checkpoints$',
      \ '__pycache__',
      \ '\.egg$', '\.egg-info$', '\.tox$', '\.idea$', '\.sass-cache',
      \ '\.env$', '\.env[0-9]$', '\.coverage$', '\.tmp$', '\.gitkeep$',
      \ '\.coverage$', '\.webassets-cache$', '\.vagrant$', '\.DS_Store',
      \ '\.env-pypy$']
let g:vimfiler_ignore_pattern='\%(.ini\|.sys\|.bat\|.BAK\|.DAT\|.pyc\|.egg-info\)$\|'.
  \ '^\%(.gitkeep\|.coverage\|.webassets-cache\|.vagrant\|)$\|'.
  \ '^\%(.env\|.ebextensions\|.elasticbeanstalk\|Procfile\)$\|'.
  \ '^\%(.git\|.tmp\|__pycache__\|.DS_Store\|.o\|.tox\|.idea\|.ropeproject\)$'
set wildignore=*.o,*.obj,*~,*.pyc "stuff to ignore when tab completing
set wildignore+=.env
set wildignore+=.env[0-9]+
set wildignore+=.env-pypy
set wildignore+=.git,.gitkeep
set wildignore+=.tmp
set wildignore+=.coverage
set wildignore+=*DS_Store*
set wildignore+=.sass-cache/
set wildignore+=__pycache__/
set wildignore+=.webassets-cache/
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=.tox/**
set wildignore+=.idea/**
set wildignore+=.vagrant/**
set wildignore+=.coverage/**
set wildignore+=*.egg,*.egg-info
set wildignore+=*.png,*.jpg,*.gif
set wildignore+=*.so,*.swp,*.zip,*/.Trash/**,*.pdf,*.dmg,*/Library/**,*/.rbenv/**
set wildignore+=*/.nx/**,*.app

" Vim UI
colorscheme desert
set incsearch " highlight as you type you search phrase
set laststatus=2 " show airline in single file mode
set lazyredraw " do not redraw while running macros
set linespace=0 " don't insert any extra pixel lines betweens rows
set list " we do what to show tabs, to ensure we get them out of my files
set listchars=tab:>-,trail:•,extends:#,nbsp:.
set matchtime=5 " how many tenths of a second to blink matching brackets for
set nofoldenable " disable code folding
set nohlsearch " do not highlight searched for phrases
set noshowmode " hide --insert-- mode
set nostartofline " leave my cursor where it was
set novisualbell " don't blink
set number " turn on line numbers
set report=0 " tell us when anything is changed via :...
set ruler " Always show current positions along the bottom
set scrolloff=10 " Keep 10 lines (top/bottom) for scope
set shortmess=aOstT " shortens messages to avoid 'press a key' prompt
set showcmd " show the command being typed
set showmatch " show matching brackets
set sidescrolloff=10 " Keep 5 lines at the size
set t_Co=256 " terminal color mode
set colorcolumn=80 " highlight column 80
set cursorline " highlight current line
set background=dark
set nocursorcolumn
set title
highlight Normal guibg=black guifg=white
highlight ColorColumn ctermbg=235 guibg=#222222
highlight CursorLine term=none cterm=none guibg=#303000 ctermbg=234

" Text Formatting/Layout
set expandtab " no real tabs please!
set formatoptions=rq " Automatically insert comment leader on return, and let gq format comments
set ignorecase " case insensitive by default
set infercase " case inferred by default
set shiftround " when at 3 spaces, and I hit > ... go to 4, not 5
set shiftwidth=4 " auto-indent amount when using cindent, >>, << and stuff like that
set smartcase " if there are caps, go case-sensitive
set softtabstop=4 " when hitting tab or backspace, how many spaces should a tab be (see expandtab)
set tabstop=4 " real tabs should be 8, and they will show with set list on
set textwidth=80 " wrap text at column 80
set nowrap " do not wrap line
set pastetoggle=<F4> " disable formatting while pasting text

" Mappings
let mapleader=","
inoremap ii <Esc>
map <F2> :NERDTreeTabsToggle<CR>
nnoremap <F5> :GundoToggle<CR>
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
cmap w!! w !sudo tee % >/dev/null
map <Leader> <Plug>(easymotion-prefix)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
nmap s <Plug>(easymotion-s)
nnoremap <silent><leader>r :set relativenumber!<cr>

" Plugins
let g:multi_cursor_start_key='<C-g>'
let g:NERDTreeMinimalUI = 1
let g:NERDTreeWinSize = 25
let g:airline_powerline_fonts = 0
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme='powerlineish'
let g:airline#extensions#tabline#enabled = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.branch = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.whitespace = ''
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0
let g:gundo_help = 0
let g:EasyMotion_do_mapping = 0
let g:tagbar_compact = 1
let g:multi_cursor_start_key='<C-n>'

" Autocommands
au! BufRead,BufNewFile *.hbs,*.handlebars setf handlebars
autocmd BufWritePre * :%s/\s\+$//e
au! BufRead,BufNewFile *.js setf javascript
au! BufRead,BufNewFile *.json setf json

" json stuff
augroup json_autocmd
    autocmd!
    autocmd FileType json set autoindent
    autocmd FileType json set textwidth=78 shiftwidth=4
    autocmd FileType json set softtabstop=4 tabstop=4
    autocmd FileType json set expandtab
augroup END

augroup yaml_autocmd
    autocmd!
    autocmd FileType yaml set autoindent
    autocmd FileType yaml set softtabstop=2 tabstop=2
augroup END

" php stuff
function! PhpSyntaxOverride()
    hi! def link phpDocTags  phpDefine
    hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
    autocmd!
    autocmd FileType php call PhpSyntaxOverride()
augroup END
