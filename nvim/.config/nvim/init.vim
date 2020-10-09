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

" git
Plug 'airblade/vim-gitgutter'

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
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'preservim/nerdcommenter'
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

		""""" configuration """""

"""" nerdtree
" toggle nerd tree 
nnoremap <silent><leader>n :NERDTreeToggle <CR>
" delete buffers when file removed
let NERDTreeAutoDeleteBuffer=1

"""" tagbar
nnoremap <silent><leader>t :TagbarToggle <CR> :wincmd l <CR> gg 

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

" indentation
set autoindent	
set shiftwidth=4	
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

"""go lang"""
autocmd FileType go map <leader>b <plug>(go-build)
autocmd FileType go map <leader>r <plug>(go-run)
autocmd FileType go map <silent><leader>g :GoDef <CR>
autocmd FileType go map <leader>f :GoRename 
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4 
let g:go_auto_type_info = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1


"""ycm"""
nnoremap <silent><leader>g :YcmCompleter GoToDefinition <CR>
let g:ycm_complete_in_comments = 1
let g:ycm_autoclose_preview_window_after_completion = 1
