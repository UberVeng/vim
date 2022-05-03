packloadall
set number
syntax on
set nowrap
set nocompatible
set foldmethod=indent
set history=1000
set updatetime=1000
set encoding=utf-8
set scrolloff=5

" disable flashing and sound bell
set visualbell 
set t_vb=
set hidden

" Correct new split position
set splitbelow
set splitright
"set statusline=%<%f\ %h%m%r%=%{fugitive#statusline()}\ \ %-14.(%l,%c%V%)\ %P
"set statusline=%<%f\ %h%m%r%=\ \ %-14.(%l,%c%V%)\ %P
"set statusline=%F%m%r%=gg

"------ Colorschemes ------
" Important!!
if has('termguicolors')
  set termguicolors
  " Fix for st
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

"let g:airline_theme='ayu_mirage'

" Gruvbox-material
" set background=dark
" let g:gruvbox_material_background = 'soft'
" let g:gruvbox_material_better_performance = 1
" colorscheme gruvbox-material
" let g:airline_theme='gruvbox-material'

" Gruvbox
" autocmd vimenter * ++nested colorscheme gruvbox
" let g:gruvbox_bold=1
" set bg=dark
" let g:gruvbox_contrast_dark = 'hard'
" colorscheme gruvbox

" Everforest !!!not working!!!
" set background=dark
" let g:everforest_background = 'soft'
" let g:everforest_better_performance = 1
" colorscheme everforest

" Ayu
" let ayucolor="mirage" " light, mirage, dark
" colorscheme ayu
" let g:airline_theme='ayu_mirage'

" Zengarden
" set bg=dark
" colorscheme zengarden


" Cyberpunk
" colorscheme cyberpunk
" let g:airline_theme='cyberpunk' " cyberpunk/silverhand
" set cursorline
" let g:cyberpunk_cursorline="black" " default/black

" Sobrio
colorscheme sobrio
let g:airline_theme='sobrio'

" Transparency
" hi Normal guibg=NONE ctermbg=NONE
"-------------------------

"------  Leader Key ------
let mapleader = "\<Space>"
"-------------------------


"------  Generic Behavior  ------

" Tab spaces
set tabstop=2
set softtabstop=2
set shiftwidth=2 
set expandtab

" Disable man when pressing shift+k
nnoremap K <Nop>

" Toggle whitespace visibility with ,s
nmap <Leader>s :set list!<CR>
set listchars=tab:>\ ,trail:·,extends:»,precedes:«,nbsp:×

" Keep the cursor in place while joining lines
nnoremap J mzJ`z

" Movement
noremap H ^
noremap L $

" Tabs
nmap <leader>t :tabnew<cr>
nmap <leader>w :tabclose<cr>
nmap <leader>, :tabprevious<cr>
nmap <leader>. :tabnext<cr>
nmap <leader>< :tabfirst<cr>
nmap <leader>> :tablast<cr>

" Screens
nmap <leader>h <C-w>h
nmap <leader>l <C-w>l
nmap <leader>j <C-w>j
nmap <leader>k <C-w>k

" Buffers
noremap <silent> <C-h> :bprev<CR>
noremap <silent> <C-l> :bnext<CR>
nnoremap <silent> <Leader>q :Bclose<CR>

" Copy/Paste to OS clipboard
vnoremap <C-y> "+y
noremap <C-p> "+p

" Ctrl+A select all
"map <C-a> ggVG

" Highlights the current line background
set cursorline

" Indetation
vmap <Tab> >
map <S-Tab> <
map <Tab> >
vmap <S-Tab> <

"-------------------------


"------  NERDTree Options  ------
let NERDTreeIgnore=['.git', '\.swp$', '\.swo$']

"setting root dir in NT also sets VIM's cd (useful for switching projects)
let NERDTreeChDirMode=2

" Toggle visibility using <Leader>n
noremap <silent> <Leader>n :NERDTreeToggle<CR>
" Focus on NERDTree using <Leader>m
noremap <silent> <Leader>m :NERDTreeFocus<CR>
" Focus on NERDTree with the currently opened file with <Leader>M
noremap <silent> <Leader>M :NERDTreeFind<CR>

" These prevent accidentally loading files while focused on NERDTree
autocmd FileType nerdtree noremap <buffer> <c-h> <nop>
autocmd FileType nerdtree noremap <buffer> <c-l> <nop>

" Open NERDTree if we're executing vim without specifying a file to open
autocmd vimenter * if !argc() | NERDTree | endif

" Hides "Press ? for help"
let NERDTreeMinimalUI=1

" Shows invisibles
let g:NERDTreeShowHidden=0

"------ Check List ------
nnoremap <leader>ct :ChecklistToggleCheckbox<cr>
nnoremap <leader>ce :ChecklistEnableCheckbox<cr>
nnoremap <leader>cd :ChecklistDisableCheckbox<cr>
vnoremap <leader>ct :ChecklistToggleCheckbox<cr>
vnoremap <leader>ce :ChecklistEnableCheckbox<cr>
vnoremap <leader>cd :ChecklistDisableCheckbox<cr>

"------ Vim Javascrip ------
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax
augroup END

" Concealing Characters
" let g:javascript_conceal_function             = "ƒ"
" let g:javascript_conceal_null                 = "ø"
" let g:javascript_conceal_this                 = "@"
" let g:javascript_conceal_return               = "⇚"
" let g:javascript_conceal_undefined            = "¿"
" let g:javascript_conceal_NaN                  = "ℕ"
" let g:javascript_conceal_prototype            = "¶"
" let g:javascript_conceal_static               = "•"
" let g:javascript_conceal_super                = "Ω"
" let g:javascript_conceal_arrow_function       = "⇒"
" let g:javascript_conceal_noarg_arrow_function = "🞅"
" let g:javascript_conceal_underscore_arrow_function = "🞅"
" set conceallevel=1

"------  Ultisnips
let g:UltiSnipsExpandTrigger="<C-x>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
