let mapleader=","
" downloding plugin manger if not downloaded

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set nocompatible
filetype plugin on
filetype indent on
		""""" Plugins """""
call plug#begin('~/.config/nvim/Plugged')
" plugin manger
Plug 'junegunn/vim-plug'
" color scheme
Plug 'dylanaraps/wal'
" line at the bottom
Plug 'vim-airline/vim-airline'
" syntax checker
Plug 'vim-syntastic/syntastic'

" git
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'

" nerd tree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'preservim/nerdtree'

" icons for vim
Plug 'ryanoasis/vim-devicons'
" tags
Plug 'preservim/tagbar'

" auto completion and snippets
Plug 'ycm-core/YouCompleteMe'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'skammer/vim-css-color'

call plug#end()

		""""" configuration """""

"""" nerdtree
" toggle nerd tree 
nnoremap <silent><leader>n :NERDTreeToggle <CR>
" delete buffers when file removed
let NERDTreeAutoDeleteBuffer=1

"""" tagbar
nnoremap <silent><leader>t :TagbarToggle <CR>

"""" ultisnippets
let g:UltiSnipsExpandTrigger="<leader>;"
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" color schemes and theme
colorscheme wal
let g:airline_theme='dark'
let g:airline_powerline_fonts = 1

""" basics
" numbering on the side 
set number relativenumber	
set showmatch	
" suggesetion menu when typping a command
set wildmenu 
" fuzzy search for files
set path+=**
" highlight search results
set hlsearch	

" indentation
set autoindent	
set shiftwidth=4	
set smartindent	
set smarttab	
set softtabstop=4	
set clipboard=unnamed
set formatoptions-=cro
set ignorecase

		    """" mappings """"

""" moving between splits
nnoremap <silent><C-l> :wincmd l <CR>
nnoremap <silent><C-h> :wincmd h <CR>
nnoremap <silent><C-k> :wincmd k <CR>
nnoremap <silent><C-j> :wincmd j <CR>

