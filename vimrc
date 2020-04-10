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
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'deoplete-plugins/deoplete-tag'
Plug 'Shougo/echodoc.vim'
Plug 'w0rp/ale'
Plug 'justinmk/vim-sneak'
Plug 'Shougo/vimfiler.vim', { 'on': 'VimFiler' }
Plug 'tpope/vim-fugitive'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'ludovicchabant/vim-gutentags'
Plug 'tmhedberg/SimpylFold'
Plug 'ambv/black'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'joshdick/onedark.vim'

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
let deoplete#tag#cache_limit_size = 5000000

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
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
" if you don't want linters to run on opening a file
let g:ale_lint_on_enter = 0

" fzf settings
set rtp+=/usr/local/opt/fzf

" gutentags settings
" install universal ctags : brew install --HEAD universal-ctags/universal-ctags/universal-ctags
" This will print the string “TAGS” in your status-line when Gutentags is generating things in the background.
set statusline+=%{gutentags#statusline()}
let g:gutentags_exclude_filetypes = ['js', 'css']


" echodoc settings
set noshowmode
let g:echodoc#enable_at_startup = 1
let g:echodoc#type = 'floating'

" simpylfold settings
let g:SimpylFold_docstring_preview = 1

colorscheme onedark

set number
set ic
set hlsearch
set tabstop=4 shiftwidth=4 expandtab
set colorcolumn=100
set cursorline
set showcmd
set ttyfast
