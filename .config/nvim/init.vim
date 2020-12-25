"~/.config/nvim/init.vim

call plug#begin('~/.config/nvim/plugged')
"Snippets tool
Plug 'SirVer/ultisnips'
	let g:UltiSnipsExpandTrigger="<tab>"
	let g:UltiSnipsJumpForwardTrigger="<tab>"
	let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

"TeX support
Plug 'lervag/vimtex'
	let g:tex_flavor='latex'
	let g:vimtex_view_method='zathura'
	let g:vimtex_quickfix_mode=0
	let g:vimtex_compiler_progname='nvr'

Plug 'KeitaNakamura/tex-conceal.vim'
	let g:tex_conceal='abdmg'

"Goyo
Plug 'junegunn/goyo.vim'
	map <F8> <Esc>:Goyo<CR>

"Colors highlight
Plug 'ap/vim-css-color'

"color schemes
Plug 'arcticicestudio/nord-vim'

call plug#end()

"Colorscheme
colorscheme nord

"Conceal
set conceallevel=1

"Numbers at the left, with relative numbering
set number relativenumber

"Spell
autocmd FileType markdown setlocal spell
autocmd FileType tex setlocal spell
autocmd FileType html setlocal spell
set spelllang=es_mx,en_uk
" Spell correction remap
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

"File type
filetype plugin indent on

"Reload init.vim
nmap <F5> :source ~/.config/nvim/init.vim<CR>

""Remaps to copy and paste from system clipboard
"vnoremap <C-c> "+y
"imap <C-v> <Esc>"+p<S-A>

"Cursor
set scrolloff=5

"Status bar
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

"Terminal normal for terminals open from vim
tnoremap <Esc> <C-\><C-n>

""Autocompletion tab
"inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"Netrw
let g:netrw_banner = 0
let g:netrw_winsize = 20

"Indent lines
set listchars=tab:\|·
set list
