" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" On-demand loading
Plug 'majutsushi/tagbar'
Plug 'Shougo/unite.vim'
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-grepper'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'w0rp/ale'
Plug 'justinmk/vim-sneak'
Plug 'Shougo/vimfiler.vim', { 'on': 'VimFiler' }
Plug 'tpope/vim-fugitive'
Plug 'dracula/vim', { 'as': 'dracula' }

" Initialize plugin system
call plug#end()

let mapleader="\<SPACE>"

set list
set listchars=tab:>-,trail:-

" indentLine settings
let g:indentLine_enabled = 1
let g:indentLine_char = "|"

" airline settings
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#ale#enabled = 1
let g:airline_powerline_fonts=1
set laststatus=2

" vimfiler settings
map ` :VimFiler -explorer<CR>
map ~ :VimFilerCurrentDir -explorer -find<CR>

" deoplete settings
let g:deoplete#enable_at_startup = 1

" Grepper setting
" grep using query
nnoremap <Leader>fp :Grepper<Space>-query<Space>
" grep using query in files in vim buffers
nnoremap <Leader>fb :Grepper<Space>-buffers<Space>-query<Space>-<Space>
" grep word under cursor
nnoremap <leader>f* :Grepper -tool grep -cword -noprompt<cr>

" sneak settings
let g:sneak#label = 1

" ale settings
let b:ale_fixers=['black']

colorscheme dracula

set number
set ic
set hlsearch
set tabstop=4 shiftwidth=4 expandtab
