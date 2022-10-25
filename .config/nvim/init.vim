" Using neovim bleeding edge compiled from source on my local machine.
" Place this file in ~/.config/nvim/
" Open this file on neovim's command line mode:
" source %
" PlugInstall

" Interesting new setup.. credit to: https://github.com/notthebee/dotfiles/tree/master/nvim
" set runtimepath^=~/.vim runtimepath+=~/.vim/after
" let &packpath = &runtimepath
" source ~/.vimrc

" general
let mapleader=" " " leader set to space on the keyboard
autocmd GUIEnter * set visualbell t_vb=
set noerrorbells
set tabstop=4 
set softtabstop=4
" set signcolumn = 
set incsearch
set expandtab
set smartindent
set nowrap
set noerrorbells
set smartcase

" Side column so I don't get too verbose
set colorcolumn=80

" keeping history
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

" Save even when mistaking the syntax
:command WQ wq
:command Wq wq
:command W w
:command Q q

" set every buffer opened
set hidden

" highlight remains off after search
set nohlsearch

" Enumeration of the lines on the left
set relativenumber " Works in neovim, but apparently not in vim
set nu

" Autocommands, press F9 and run a single file of python3, C, C++ code
autocmd filetype python nnoremap <F9> :w <bar> exec '!python3 '.shellescape('%')<CR>
autocmd filetype cpp nnoremap <F9> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype c nnoremap <F9> :w <CR>:!gcc % -o %:r && ./%:r<CR>

" Install vim-plug from: https://github.com/junegunn/vim-plug
" Using vim-plug, installing the plugins in the /home/angelo/.vim/plugged directory
" [0], [1], [2].. is the order, followed by customizations later in the file.
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree' " [0]
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' } " [1]
Plug 'gruvbox-community/gruvbox' " [2]
Plug 'junegunn/goyo.vim' " [3]
Plug 'junegunn/seoul256.vim' " [4]
Plug 'tpope/vim-sensible' " [5]
Plug 'tpope/vim-fugitive' " [6]
Plug 'lervag/vimtex' " [7]
Plug 'prettier/vim-prettier', { 'do': 'yarn install' } " [8]
Plug 'neovim/nvim-lspconfig' " [9]
Plug 'mbbill/undotree'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'JuliaEditorSupport/julia-vim'
call plug#end()

" [0]
" NERDTree remaps for sane people 
" :NERDTree to access it, gt to switch tab forward, gT backward
" (THANKS theprimeagen at 3:55: https://www.youtube.com/watch?v=Iid1Ms14Om4)
" <C-h> and <C-l> to jump from the file tree to the editor: no more.
" Now remapped to leader (i.e. space) plus h or l
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>
" This... is mine.. leader + t and you have the tree opened..
map <leader>t :NERDTree<CR>
map <leader>f :wincmd gt<CR> " Tab forward!
map <leader>b :wincmd gT<CR> " Tab backwards!

" [1]
" Read the docs: https://github.com/xuhdev/vim-latex-live-preview
" Setting up zathura as the default PDF viewer for vim-latex-live-preview
let g:livepreview_previewer = 'zathura'
map <leader>w :LLPStartPreview<CR>

" [2]
" Set colorscheme " Commented if currently using another colorscheme
" colorscheme gruvbox
" set background=dark

" [3]
" easy to use Goyo: toggle on with leader+g, toggle off with leader+f
map <leader>g :Goyo<CR> 
" map <leader>f :Goyo!<CR> " I don't know if this is useful ..

" [4]
" Seul 256 colorscheme " Commented if currently using another colorscheme
colo seoul256-light
" colo seoul256
" set background=dark
" set background=light

" [5]
"

" [6]
" vim-fugitive, still to think how to use it properly
" map <leader>a :Git add .<CR> 
" map <leader>c :Git commit -a<CR> 
" map <leader>p :Git push origin master<CR> 

" [7]
" vimtex
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'

