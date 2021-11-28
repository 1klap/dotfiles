set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set relativenumber
set nu
set hidden
set ignorecase
set smartcase
set incsearch
set scrolloff=8
set colorcolumn=80

call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'neovim/nvim-lspconfig'
Plug 'preservim/nerdtree'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
call plug#end()

" autocmd vimenter * ++nested colorscheme gruvbox
set termguicolors
set background=dark
colorscheme gruvbox

let mapleader=' '
nnoremap <leader>/ :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>
nnoremap <leader>ff <cmd>Telescope find_files<CR>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
