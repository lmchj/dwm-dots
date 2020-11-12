"~/.config/nvim/init.vim

call plug#begin('~/.config/nvim/plugged')

"Snippets tool
Plug 'sirver/ultisnips'
    let g:UltiSnipsExpandTrigger = '<tab>'
    let g:UltiSnipsJumpForwardTrigger = '<tab>'
    let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

"TeX support
Plug 'lervag/vimtex'
    let g:tex_flavor='latex'
    let g:vimtex_view_method='zathura'
    let g:vimtex_quickfix_mode=0
	let g:vimtex_compiler_progname='nvr'

Plug 'KeitaNakamura/tex-conceal.vim'
    let g:tex_conceal='abdmg'

"Markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
	let g:vim_markdown_folding_disabled = 1
	let g:tex_conceal = "abdmg"
	let g:vim_markdown_math = 2

"R
Plug 'jalvesaq/Nvim-R'

"csv
Plug 'chrisbra/csv.vim'

"Autocompletion
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

" sources
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'gaalcaras/ncm-R'

"Syntax
Plug 'othree/yajs.vim'

"Files tree
Plug 'scrooloose/nerdtree'

"Goyo
Plug 'junegunn/goyo.vim'

"Colors highlight
Plug 'ap/vim-css-color'

"color schemes
"Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'arcticicestudio/nord-vim'

call plug#end()

"conceal
set conceallevel=1

"autocompletion
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"Numbers at the left, with relative numbering
set number relativenumber

"Spell
"setlocal spell
autocmd FileType markdown setlocal spell
autocmd FileType tex setlocal spell
set spelllang=es_mx,en_us
" spell correction
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

"Indentation
set tabstop=4
set shiftwidth=4

"File type
filetype plugin indent on

"air-line
"let g:airline_powerline_fonts = 1
"let g:airline_theme = 'wombat'

"toggle line number 
nmap <F2> :set invnumber invrelativenumber<CR>

"reload init.vim
nmap <F5> :source ~/.config/nvim/init.vim<CR>

"NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"copy and paste from system clipboard
"requires gvim or something that enables system clipboard
vnoremap <C-c> "+y
imap <C-v> <Esc>"+p<S-A>

"toggle goyo
map <F8> <Esc>:Goyo<CR>

"cursor
set scrolloff=999

"status bar
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
"set statusline=(%F)\ %m%r%h%w%y=-%0l/%0L\ %0c%V\ %p%%

"set colorscheme
colorscheme nord

"terminal normal
tnoremap <Esc> <C-\><C-n>
