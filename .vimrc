nmap Home <^>
nmap End <$>
nmap <CR> :
vmap <CR> :
vmap End <$>
vmap Home <^>
set clipboard=unnamed
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set mouse=a
set relativenumber
set nu
set autoindent
let autosave=5
autocmd InsertLeave * se nocul
map <C-n> :NERDTreeToggle<CR>
nn <silent><F2> :exec("NERDTree ".expand('%:h'))<CR>
let mapleader="\<Space>"
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>q! :q!<CR>
nnoremap <Leader>wq :wq<CR>
nnoremap <Leader>f :Files<CR>
nnoremap <Leader>b :Buffers<CR>
nmap <Leader>o o<Esc>

" <Leader>f{char} to move to {char}
map  <Leader>j <Plug>(easymotion-bd-f)
nmap <Leader>j <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader>l <Plug>(easymotion-overwin-line)

if &compatible
 set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.dein')
 call dein#begin('~/.dein')

 call dein#add('~/.dein')
 call dein#add('Shougo/deoplete.nvim')
   call dein#add('/usr/local/opt/fzf')
 if !has('nvim')
   call dein#add('roxma/nvim-yarp')
   call dein#add('roxma/vim-hug-neovim-rpc')
   call dein#add('roxma/nerdtree')
   call dein#add('roxma/fzf.vim')
   call dein#add('roxma/vim-easymotion')
 endif

 call dein#end()
 call dein#save_state()
endif

filetype plugin indent on
syntax enable
