call plug#begin('~/.vim/plugged')

" Aspect
Plug 'https://github.com/altercation/vim-colors-solarized.git'
Plug 'https://github.com/vim-airline/vim-airline.git'
Plug 'https://github.com/vim-airline/vim-airline-themes.git'

" Ruby
Plug 'https://github.com/vim-ruby/vim-ruby'
Plug 'https://github.com/tpope/vim-rails'
Plug 'https://github.com/thoughtbot/vim-rspec.git'
Plug 'https://github.com/ngmy/vim-rubocop'

Plug 'https://github.com/kien/ctrlp.vim.git'
Plug 'https://github.com/scrooloose/nerdtree.git'
" Plug 'https://github.com/klen/python-mode.git'
Plug 'https://github.com/kchmck/vim-coffee-script'
Plug 'https://github.com/slim-template/vim-slim'
Plug 'https://github.com/plasticboy/vim-markdown.git'
Plug 'https://github.com/genoma/vim-less.git'

call plug#end()

" Buffers
nnoremap gb :bn<CR>
nnoremap gB :bp<CR>

" Line number
set nu

" CtrlP
map <F2> :CtrlP<CR>

" don't recopy the text wipped by a paste
xnoremap p pgvy

" folding
set foldmethod=syntax
set foldlevelstart=20

" Always show statusline
set laststatus=2

" powerline for airline
let g:airline_powerline_fonts = 1

" trailing whitespace
xnoremap RTW %s/\s\+$//e

" airline buffer appearance
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

" Rspec.vim mappings

function! RunCurrentSpecFileWithFocus()
  if InSpecFile()
    let l:spec = @% . " --tag @focus"
    call SetLastSpecCommand(l:spec)
    call RunSpecs(l:spec)
  else
    call RunLastSpec()
  endif
endfunction

" set bash-like autocompletion
set wildmode=list:longest

" vim-ruby
set nocompatible
syntax on
filetype on
filetype indent on
filetype plugin on

" Adds ruby syntax highlighting for prawn files
au BufRead,BufNewFile *.prawn   set filetype=ruby

set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent " on a new line, autindenting like previous line

imap <C-B> <CR><CR>end<Esc>-cc
imap <C-F> def <CR>end<Esc>-A

" syntastic
"let g:syntastic_ruby_checkers = ['rubocop']
"let g:syntastic_check_on_open = 1

" NERDTree
nmap <silent> <C-n> :call g:WorkaroundNERDTreeToggle()<CR>

function! g:WorkaroundNERDTreeToggle()
  try | NERDTreeToggle | catch | silent! NERDTree | endtry
endfunction

" Solarized

" to properly display colorschemes
"set t_Co=16
"set term=screen-256color-bce
" work with gnome terminal
let g:solarized_termcolors=256

syntax enable
set background=dark
colorscheme solarized
