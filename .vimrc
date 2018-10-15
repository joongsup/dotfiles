set nocompatible              " be iMproved, required
filetype off                  " required
let mapleader = ","

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'jalvesaq/Nvim-R'
Plugin 'jpalardy/vim-slime'
Plugin 'Raimondi/delimitMate'

call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
 "filetype plugin on
 "
 " Brief help
 " :PluginList       - lists configured plugins
 " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
 " :PluginSearch foo - searches for foo; append `!` to refresh local cache
 " :PluginClean      - confirms removal of unused plugins; append `!` to
 " auto-approve removal
 "
 " see :h vundle for more details or wiki for FAQ
 " Put your non-Plugin stuff after this line

" nerdtree options
map <Leader>nt <ESC>:NERDTree<CR>

" vim-slime options
" let g:slime_target = "vimterminal" 

" nvim-r options
"autocmd VimLeave * if exists("g:SendCmdToR") && string(g:SendCmdToR) != "function('SendCmdToR_fake')" | call RQuit("nosave") | endif
let R_assign = 0
"let maplocalleader = ","
"let R_esc_term = 0
"
"" remapping the basic :: send line
"nmap <space> <Plug>RDSendLine
"" remapping selection :: send multiple lines
"vmap <space> <Plug>RDSendSelection
"" remapping selection :: send multiple lines + echo lines
"vmap <space>e <Plug>RESendSelection

" delimitMate
let delimitMate_expand_cr = 1

" general options
syntax on
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set number
set relativenumber "when copying and pasting, numbers are pasted too! se mouse+=a should fix it when pasting from mouse
set backspace=indent,eol,start
set ignorecase
set hlsearch
set showmatch
set splitright
set splitbelow

" pane movements
map <C-L> <C-W><C-L>
map <C-H> <C-W><C-H>
map <C-J> <C-W><C-J>
map <C-K> <C-W><C-K>

nnoremap <leader><space> :noh<cr>
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>v V`]
inoremap jj <ESC>
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <leader>num :set number<cr>
nnoremap <leader>numr :set relativenumber<cr>
nnoremap <leader>nonum :set nonumber<cr>
nnoremap <leader>nonumr :set norelativenumber<cr>


" pane resize
nnoremap <silent> <Leader>= :exe "resize +3"<CR>
nnoremap <silent> <Leader>- :exe "resize -3"<CR>
nnoremap <silent> <Leader>] :exe "vertical resize +8"<CR>
nnoremap <silent> <Leader>[ :exe "vertical resize -8"<CR>

nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>_ :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <silent> <Leader>} :exe "vertical resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>{ :exe "vertical resize " . (winheight(0) * 2/3)<CR>
nnoremap <leader>p li<space><esc>p



