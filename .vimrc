set termwinsize=10x0
set number
set relativenumber
set backspace=indent,eol,start
set shell=powershell.exe
set laststatus=2
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
let loaded_matchparen=1
let &t_SI = "\e[6 q"
let &t_EI = "\e[6 q"
let java_highlight_functions = 1
let java_highlight_all = 1
highlight link javaType Type
highlight link javaScopeDecl Statement
highlight link javaDocTags PreProc
syntax on

highlight VertSplit cterm=NONE
highlight CocFloating ctermbg=darkgray guibg=darkgray

call plug#begin()

Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim'
Plug 'itchyny/lightline.vim'

call plug#end()

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <C-b> :bel terminal<CR>
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <silent><expr> <c-space> coc#refresh()
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
