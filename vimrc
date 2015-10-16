set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Plugin 'Townk/vim-autoclose'
"Plugin 'elzr/vim-json'
Plugin 'SirVer/ultisnips'
Plugin 'StanAngeloff/php.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'ap/vim-css-color'
Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'bling/vim-airline'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'cespare/vim-toml'
Plugin 'dantleech/vim-phpunit'
Plugin 'digitaltoad/vim-jade.git'
Plugin 'easymotion/vim-easymotion'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'evanmiller/nginx-vim-syntax'
Plugin 'evidens/vim-twig'
Plugin 'flazz/vim-colorschemes'
Plugin 'gmarik/Vundle.vim'
Plugin 'godlygeek/tabular'
Plugin 'groenewege/vim-less'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'honza/vim-snippets'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'jiangmiao/auto-pairs'
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
Plugin 'tmatilai/vim-monit'
Plugin 'tomasr/molokai'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/c.vim'
Plugin 'wavded/vim-stylus.git'
Plugin 'wting/rust.vim'
Plugin 'mattn/emmet-vim'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'tyru/open-browser.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ervandew/supertab'
Plugin 'dsawardekar/wordpress.vim'
Plugin 'tpope/vim-surround'
Plugin 'spf13/piv'

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
set mouse+=a " use mouse everywhere
if &term =~ '^screen'
    " tmux knows the extended mouse mode
    set ttymouse=xterm2
endif
set nocompatible " explicitly get out of vi-compatible mode
set noerrorbells " don't make noise
set nomore " Short nomore
set syntax=on
set timeoutlen=300 " super low delay (works for me)
set viminfo+=! " Store upper-case registers in viminfo

" Vim UI
colorscheme sand
set background=light
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
"set scrolloff=10 " Keep 10 lines (top/bottom) for scope
set shortmess=aOstT " shortens messages to avoid 'press a key' prompt
set showcmd " show the command being typed
set showmatch " show matching brackets
"set sidescrolloff=10 " Keep 5 lines at the size
set t_Co=256 " terminal color mode
set colorcolumn=80 " highlight column 80
set cursorline " highlight current line
set nocursorcolumn
set title
set ttyfast
set completeopt-=preview
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
nnoremap Q <Nop>
cmap w!! w !sudo tee % >/dev/null
map <Leader> <Plug>(easymotion-prefix)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
nmap s <Plug>(easymotion-s)
nnoremap <silent><leader>r :set relativenumber!<cr>
nnoremap <silent><leader>pp :call GeneratePhpunit()<CR>
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
nmap <silent> <leader>ev :e $MYVIMRC<CR>

" Plugins
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
let g:EasyMotion_do_mapping = 0
let g:tagbar_compact = 1
let g:ctrlp_working_path_mode = 0
let g:multi_cursor_start_key='<C-n>'
let g:syntastic_cpp_checkers = ['gcc']
let g:syntastic_cpp_compiler = 'gcc'
let g:syntastic_cpp_compiler_options = '-std=c++14'
let g:syntastic_cpp_check_header = 0
let g:phpunit_namespace_prefix="Tests"
let g:user_emmet_mode='a'
let g:user_emmet_leader_key='<C-Z>'
let g:ycm_key_list_select_completion = []
let g:ycm_key_list_previous_completion = []
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger='<tab>'
let g:UltiSnipsJumpBackwardTrigger='<s-tab>'
let g:DisableAutoPHPFolding = 1

" Autocommands
au! BufRead,BufNewFile *.hbs,*.handlebars setf handlebars
au! BufWritePre * :%s/\s\+$//e
au! BufRead,BufNewFile *.js setf javascript
au! BufRead,BufNewFile *.snippet setf snippet
au! BufRead,BufNewFile *.json setf json
au! BufRead,BufNewFile Vagrantfile setf ruby
au! BufRead,BufNewFile *.twig set filetype=jinja
au! BufRead,BufNewFile *.html.twig set filetype=jinja
au! Filetype *.yml,*.yaml,*.jade set autoindent
au! Filetype *.yml,*.yaml,*.jade setlocal ts=2 sts=2 sw=2
au! FileType make setlocal noexpandtab
au! FileType php set omnifunc=phpcomplete#CompletePHP
au BufRead,BufNewFile *.scss set filetype=scss.css
au FileType scss set iskeyword+=-
au CompleteDone * pclose " close omnifuc preview


syn keyword cmake_function externalproject_add
hi def link cmake_function PreProc

function! s:strip(input_string)
    return substitute(substitute(a:input_string, '^\s*\(.\{-}\)\s*\n+$', '\1', ''), '\n\+$', '', '')
endfunction

let g:git_author = s:strip(system('git config --global user.name'))
let g:git_email  = s:strip(system('git config --global user.email'))

let g:snips_author = g:git_author.' <'.g:git_email.'>'
let g:author       = g:git_author
let g:snips_email  = g:git_email
let g:email        = g:git_email
let g:snips_github = 'https://github.com/absalonvaldes'
let g:github       = 'https://github.com/absalonvaldes'
