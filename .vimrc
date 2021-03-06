"Install vim-plug if not installed
if empty(glob('~/.vim/autoload/plug.vim'))
          silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
              \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
            autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
"vim-plug
call plug#begin('~/.vim/plugged')

Plug 'tmhedberg/SimpylFold'
Plug 'vim-syntastic/syntastic'
Plug 'preservim/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'vimwiki/vimwiki'
Plug 'ycm-core/YouCompleteMe'

"Python
Plug 'vim-scripts/indentpython.vim'
Plug 'nvie/vim-flake8'

"Themes
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'vim-airline/vim-airline-themes'

"Syntax hilighting
Plug 'ekalinin/Dockerfile.vim'
Plug 'vim-crystal/vim-crystal'
"Color codes
Plug 'chrisbra/Colorizer'

call plug#end()
"personal config
set noswapfile
set tabstop=4
set softtabstop=4
set shiftwidth=4
set number
set foldmethod=indent
set foldlevel=99
set encoding=utf-8
set backspace=indent,eol,start
set autoindent
set nocompatible
filetype plugin on
syntax on


"Theme and color stuff below

set termguicolors 
"Render colorscheme in suckless terminal/alacritty
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"


set bg=dark
let g:gruvbox_bold=1
let g:gruvbox_italic=1
let g:gruvbox_undercurl=1
let g:gruvbox_underline=1
let g:gruvbox_termcolors=256
let g:gruvbox_contrast_dark='hard'
"colorscheme gruvbox
colorscheme ayu

hi Search guibg=black guifg=white
hi Search cterm=NONE ctermfg=white ctermbg=black
hi Cursor guifg=white guibg=black
"Plugin stuff
let python_highlight_all=1

"netrw config
"remove banner
let g:netrw_banner = 0
"open files in new tab
let g:netrw_browse_split = 3
"size of window
let g:netrw_winsize = 25
let g:keepdir = 0
let g:liststyle = 1
let g:netrw_sort_options = 'i'

"Show hidden files nerdtree
let NERDTreeShowHidden=1


let g:airline#extensions#virtualenv#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#show_close_button = 0 "disable weird x button on buffers
let g:airline#extensions#tabline#show_tab_nr = 0 "disable tab number
let g:airline#extensions#tabline#show_tab_type = 0 "disable weird orange thing
"let g:airline_theme='spaceduck'
let g:airline_powerline_fonts = 1

"split navigations
"nnoremap <C-J> <C-W><C-J>
"nnoremap <C-K> <C-W><C-K>
"nnoremap <C-L> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h

nnoremap <C-F> :NERDTreeToggle<CR>


"Tab remaps
nnoremap <F1> :tabprev<CR>
nnoremap <F2> :tabnext<CR>
nnoremap <F3> :tabnew<CR>

"remap nerdcomment toggle
"you can press number of lines prior to pressing macro"
nmap <C-c> <Plug>NERDCommenterToggle
vmap <C-c> <Plug>NERDCommenterToggle<CR>gv

"Python PEP 8 indentation
au BufNewFile,BufRead *.py
        \ set tabstop=4 |
        \ set softtabstop=4 |
        \ set shiftwidth=4 |
        \ set textwidth=79 |
        \ set expandtab |
        \ set autoindent |
        \ set fileformat=unix
