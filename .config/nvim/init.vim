"~/.config/nvim/init.vim

"let autoload_plug_path='~/.config/nvim/autoload/plug.vim'
"if !filereadable(autoload_plug_path)
"	echo "Downloading junegunn/vim-plug to manage plugins..."
"	silent execute '!curl -fLo ' . autoload_plug_path . '  --create-dirs
"				\ "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"'
"	autocmd VimEnter * PlugInstall
"endif
"unlet autoload_plug_path

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
    set conceallevel=1
    let g:tex_conceal='abdmg'

"Syntax
Plug 'othree/yajs.vim'

"Status bar
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'

"Files tree
Plug 'scrooloose/nerdtree'

"Goyo
Plug 'junegunn/goyo.vim'

"Colors highlight
Plug 'ap/vim-css-color'

"Dracula theme
Plug 'dracula/vim', { 'as': 'dracula' }

"Nord theme
Plug 'arcticicestudio/nord-vim'

call plug#end()

"Numbers at the left, with relative numbering
set number relativenumber

"Spell
"setlocal spell
autocmd FileType markdown setlocal spell
autocmd FileType tex setlocal spell
set spelllang=es_mx,en_us
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

"reload vimrc
nmap <F5> :source ~/.config/nvim/init.vim<CR>

"toggle NERDTree
map <C-n> :NERDTreeToggle<CR>

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
