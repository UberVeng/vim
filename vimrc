packloadall
set number relativenumber
syntax on
set nowrap
set nocompatible
set history=1000
set updatetime=500
set encoding=utf-8
set scrolloff=5
set autoindent
set nocompatible

" Change language in insert mode only
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
inoremap <C-l> <C-^>

" show key persses in normal mode
set showcmd

" Case insensitive search 
set ignorecase

" Update ultisnips
execute "set <M-j>=\ej"
nnoremap <M-j> :set number <cr>

" Remove search highlight on alt+h
execute "set <M-h>=\eh"
nnoremap <M-h> :nohlsearch<cr>

" Update ultisnips
execute "set <M-u>=\eu"
nnoremap <M-u> :call UltiSnips#RefreshSnippets()<cr>

" Local cd to current file
execute "set <M-c>=\ec"
nnoremap <M-c> :lcd %:p:h<CR>

" Smartcase search
set smartcase

" disable folding
set nofoldenable    
set foldmethod=manual

" Highlighted search
set hlsearch
hi Search cterm=NONE ctermfg=grey ctermbg=blue

" disable flashing and sound bell
set visualbell 
set t_vb=
set hidden

" Treat _ as word break
" set iskeyword-=_

" Correct new split position
set splitbelow
set splitright
"set statusline=%<%f\ %h%m%r%=%{fugitive#statusline()}\ \ %-14.(%l,%c%V%)\ %P
"set statusline=%<%f\ %h%m%r%=\ \ %-14.(%l,%c%V%)\ %P
"set statusline=%F%m%r%=gg
"set laststatus=2

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
""set background=dark
""let g:gruvbox_material_background = 'soft'
""let g:gruvbox_material_better_performance = 1
""colorscheme gruvbox-material
""let g:airline_theme='gruvbox-material'

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
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

" Transparency
" hi Normal guibg=NONE ctermbg=NONE
"-------------------------

"------  Leader Key ------
let mapleader = "\<Space>"
"-------------------------


"------  NERDTree Options  ------

" enable line numbers
let NERDTreeShowLineNumbers=1
" make sure relative line numbers are used

autocmd FileType nerdtree setlocal relativenumber

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
" let g:UltiSnipsExpandTrigger="<C-x>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
" let g:UltiSnipsSnippetDirectories=["UltiSnips"]
let g:python3_host_prog="/usr/bin/python3"

"------ Vim Venter ------
nnoremap <leader>v :VenterToggle<cr>


"------  Generic Behavior  ------

" Tab spaces
set tabstop=2
set softtabstop=2
set shiftwidth=2 
set expandtab
set guitablabel=%f

" Disable man when pressing shift+k
nnoremap K <Nop>

" Toggle whitespace visibility with ,s
" nmap <Leader>s :set list!<CR>
" set listchars=tab:>\ ,trail:·,extends:»,precedes:«,nbsp:×

" Keep the cursor in place while joining lines
nnoremap J mzJ`z

" Movement
noremap H ^
noremap L g_

" Go to the end of line + new line symbol
execute "set <M-l>=\el"
map <M-l> $

" Tabs
nmap <leader>T :tabnew<cr>
nmap <leader>t :tabnew 
nmap <leader>w :tabclose<cr>
nmap <leader>W :bd<cr>
nmap <leader>, :tabprevious<cr>
nmap <leader>. :tabnext<cr>
nmap <leader>< :tabfirst<cr>
nmap <leader>> :tablast<cr>

nmap <leader>] :tabm -1<cr>
nmap <leader>\ :tabm +1<cr>

noremap! <C-BS> <C-w>
noremap! <C-h> <C-w>

" Screens
nmap <leader>h <C-w>h
nmap <leader>l <C-w>l
nmap <leader>j <C-w>j
nmap <leader>k <C-w>k

" Term size
set termwinsize=15*

" Open screen with NEW terminal
nmap <silent> <leader>E :terminal<CR><C-w>:resize 15<CR>

" Open screen with already opened terminal
function! ShowTerm()
  try
    silent sb zsh
  catch
    if has('nvim')
      sp
    endif
    terminal
  endtry
  resize 15
endfunction
nmap <silent> <leader>e :call ShowTerm()<CR>
" function! ShowTerm()
"   try
"     silent sb zsh
"   catch
"     execute "terminal"
"   endtry
"   resize 15
" endfunction
" nmap <silent> <leader>e :call ShowTerm()<CR>

" Loose termianl focus
tnoremap <C-k> <C-w>k

" Loose termianl focus
noremap <C-k> <C-w>j

" CLOSE terminal with Esc key (will break default terminal alt shortcuts)
tnoremap <C-q> <C-w><C-c>

" HIDE terminal with Esc key (will break default terminal alt shortcuts)
if has('nvim')
  tnoremap <silent> <Esc> <C-\><C-n>:q<CR>
else
  tnoremap <silent> <Esc> <C-w>:q<CR>
endif
set notimeout ttimeout timeoutlen=100

" Arrow up in xterm
tnoremap <Esc>OA <Up>

" Next buffer in terminal
" tnoremap <C-l> <C-w>:bnext<CR>
" set notimeout ttimeout timeoutlen=100

" Previous buffer in terminal
tnoremap <C-h> <C-w>:bprev<CR>
set notimeout ttimeout timeoutlen=100

" Buffers
noremap <silent> <C-h> :bprev<CR>
noremap <silent> <C-l> :bnext<CR>
nnoremap <silent> <Leader>q :Bclose<CR>

" Copy/Paste to OS clipboard
vnoremap <C-y> "+y
noremap <C-p> "+p
noremap <C-P> "+P

" Ctrl+A select all
"map <C-a> ggVG

" Highlights the current line background
set cursorline

" Indetation
vnoremap <Tab> >
map <S-Tab> <
map <Tab> >
vnoremap <S-Tab> <

" Search selected
vnoremap s yq/p<cr>
vnoremap <Leader>s yq/pV:s/\//\\\//g<cr><cr>

" Search down into subdirectories
set path+=**
set wildmenu

"-------------------------


"------  Additional Binds ------

" set terminal inside vm
" set term=st-256color

" Disable timeout
set ttimeoutlen=0

" Restore original file
nnoremap <leader>R :earlier 1d<cr>
nnoremap <leader>L :later 1d<cr>

" Move selected text
vmap <C-k> :m-2<cr>`[V`]
vmap <C-j> :m+1<cr>`[V`]

" Fix tabs
noremap <leader>f :set autoindent<cr>:set tabstop=2<cr>:set softtabstop=2<cr>:set shiftwidth=2<cr>:set expandtab<cr>:retab<cr>

" Autoindent golang on save
" autocmd BufWritePre *.go :normal gg=G``

" Cut to x buffer
nnoremap X "xdd
vnoremap X "xx

" Paste from x buffer
noremap <leader>x "xp

" previous tab after current closed
" function! s:PreviousTab_StoreState()
" 	let s:tab_current = tabpagenr()
" 	let s:tab_last = tabpagenr('$')
" endfunction
" function! s:PreviousTab_TabClosed()
" 	if s:tab_current > 1 && s:tab_current < s:tab_last
" 		exec 'tabp'
" 	endif
" endfunction
" autocmd TabEnter,TabLeave * call s:PreviousTab_StoreState()
" autocmd TabClosed * call s:PreviousTab_TabClosed()

" Open file in new tab
nnoremap <leader>o <c-w>gf

function! ShowFileInSplit()
  vertical wincmd f
  vertical resize 200
endfunction

nnoremap <leader>s :call ShowFileInSplit()<cr>

" Nvim
if !has('nvim')
  set ttymouse=xterm2
endif

if has('nvim')
  tnoremap <c-n> 
  nnoremap <silent> <c-n> :call ShowTerm()<CR>
endif

function! JsBeautify()
  echo "Making indents..."
  %s/{/ {\r/g
  %s/,/,\r/g
  %s/}/\r}/g
  %s/}[^,]/}\r/g
  set filetype=javascript
  normal ggVG=
  echo "Done!"
endfunction

function! JsonBeutify()
  echo "Making indents..."
  %s/\({\|},\?\)/\1\r/g
  %s/,/,\r/g
  %s/\(},\?\)/\r\1/g
  g/^$/d
  set filetype=json
  normal ggVG=
  echo "Done!"
endfunction

function! GetFileName()
  return expand('%:t')
endfunction

