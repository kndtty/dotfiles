""""""""
" dein "
""""""""
"Required
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.vim/dein'))

call dein#add('cocopon/iceberg.vim')
call dein#add('scrooloose/nerdtree')
call dein#add('jistr/vim-nerdtree-tabs')
call dein#add('Xuyuanp/nerdtree-git-plugin')
call dein#add('airblade/vim-gitgutter')
call dein#add('tpope/vim-rails')
call dein#add('tpope/vim-endwise')
call dein#add('ctrlpvim/ctrlp.vim')
call dein#add('tpope/vim-fugitive')
"LSP用
call dein#add('prabirshrestha/async.vim')
call dein#add('prabirshrestha/asyncomplete.vim')
call dein#add('prabirshrestha/asyncomplete-lsp.vim')
call dein#add('prabirshrestha/vim-lsp')
call dein#add('mattn/vim-lsp-settings')
call dein#add('mattn/vim-goimports')

call dein#add('dense-analysis/ale')
call dein#add('posva/vim-vue')

call dein#end()

" Required:
filetype plugin indent on
syntax enable

"""""""
" map "
"""""""
inoremap <C-h>  <left>
inoremap <C-j>  <down>
inoremap <C-k>  <up>
inoremap <C-l>  <right>
inoremap <silent> jj <ESC>
map <C-n> <plug>NERDTreeTabsToggle<CR>
nnoremap <C-[> :<C-u>tab stj <C-R>=expand('<cword>')<CR><CR>
nnoremap <ESC><ESC> :nohl<CR>
nnoremap <silent> gn :bnext<CR>
nnoremap <silent> gp :bprevious<CR>
noremap <silent> th gT
noremap <silent> tl gt


""""""""""
" syntax "
""""""""""
syntax on

"""""""
" set "
"""""""
set background=dark
set hlsearch
set ignorecase smartcase
set incsearch
set nowrap
set nu
set vb t_vb=

"""""""""""""""
" colorscheme "
"""""""""""""""
colorscheme iceberg

"""""""""""
" autocmd "
"""""""""""
autocmd BufWritePre * :%s/\s\+$//e

"""""""
" let "
"""""""

" let g:nerdtree_tabs_open_on_console_startup=1

let g:airline#extensions#ale#enabled = 1
let g:ale_fix_on_save = 1
let g:ale_fixers = { 'vue': ['eslint'], 'ruby': ['rubocop'], }
let g:ale_linters = { 'vue': ['eslint'], 'ruby': ['rubocop'], }
let g:ale_linters_explicit = 1

