" Author: Emiliano Firmino
" Contact: emiliano.firmino@gmail.com
" Description: vim configuration using vundle

" Installation:
" 1. Clone Vundle
" $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" 2. Sync and Install Plugins
" $ vim +PluginInstall +qall

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'          " plugin manager
Plugin 'aperezdc/vim-template.git'     " template for empty files
Plugin 'flazz/vim-colorschemes.git'    " large collection of colorschemes
Plugin 'Lokaltog/vim-powerline.git'    " improved context line
Plugin 'Gundo'                         " better undo
Plugin 'scrooloose/nerdcommenter.git'  " improved code comment helper
Plugin 'scrooloose/nerdtree.git'       " improved directory listing
Plugin 'tpope/vim-fugitive.git'        " git wrapper
Plugin 'surround.vim'                  " useful surround text with
Plugin 'L9'                            " dependency for other plugins
Plugin 'vim-scripts/FuzzyFinder.git'   " improved text finder
Plugin 'rust-lang/rust.vim'            " rust syntax highlight and formatter
Plugin 'Rip-Rip/clang_complete'
Plugin 'SuperTab'
Plugin 'snipMate'
call vundle#end()

filetype plugin indent on

scriptencoding utf-8
set encoding=utf-8

set modelines=5
syntax enable   " enable syntax highlight

let mapleader='\'

set autoread                    " reload file if changed outside
set backspace=indent,eol,start  " expected behavior for backspace
set backup                      " always keep a backup file
set clipboard=unnamed           " expected behavior for clipboard
set laststatus=2                " show status line
set hlsearch                    " enable search highligh
set mouse=a                     " expected behavior for mouse
set nocompatible                " remove vi compability annoyances
set nowrap                      " don't break virtual lines
set relativenumber number       " show hybrid line number
set list                        " show invisible character
set wildmenu                    " show command suggestions
set wildmode=list:longest,full  " list available options
set virtualedit=onemore         " add virtual character at the end

" Typo fixes
cab W  w
cab Q  q
cab Wq wq
cab wQ wq
cab WQ wq
cab Qa qa
cab qA qa
cab QA qa

" Real programmers don't use tabs but spaces
set expandtab      " Convert pressed tab to spaces
set shiftround     " Round shiftwidth to multiples
set shiftwidth=4   " Number of spaces to use for each step of indent
set softtabstop=4  " Number of spaces that a tab counts
set tabstop=4      " Number of spaces that a tab counts

" Common Editor Shortcuts
nnoremap ; :

" Undo
noremap  <silent> <C-Z> :undo<CR>
vnoremap <silent> <C-Z> :undo<CR>
inoremap <silent> <C-Z> <ESC>:undo<CR>`[

" Redo
inoremap <silent> <C-Y> <C-R>
noremap  <silent> <C-Y> <C-R>
vnoremap <silent> <C-Y> <C-R>

" Save
noremap  <silent> <C-S> :update<CR>
vnoremap <silent> <C-S> :update<CR>
inoremap <silent> <C-S> <ESC>:update<CR>`[

" Copy to Clipboard
noremap  <silent> <C-C> Y
vnoremap <silent> <C-C> y
inoremap <silent> <C-C> <ESC>Y`[

" Paste from Clipboard
noremap <silent>  <C-V> p
vnoremap <silent> <C-V> p
inoremap <silent> <C-V> <ESC>p`[

" Close Vim
noremap  <silent> <C-X> :quit<CR>
vnoremap <silent> <C-X> :quit<CR>
inoremap <silent> <C-X> <ESC>:quit<CR>`[

" Firefox Like TabNavigation
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>`[
inoremap <C-tab>   <Esc>:tabnext<CR>`[
inoremap <C-t>     <Esc>:tabnew<CR>

" Vi Like TabNavigation
nnoremap <leader>t  :tabfirst<CR>
nnoremap <leader>s  :tabnext<CR>
nnoremap <leader>h  :tabprev<CR>
nnoremap <leader>n  :tablast<CR>
nnoremap <leader>q  :tabclose<CR>

" Better hjkl for Dvorak User
nmap h <Left>
nmap t <Up>
nmap n <Down>
nmap s <Right>
nmap H <Home>
nmap T <PageUp>
nmap N <PageDown>
nmap S <End>

vmap h <Left>
vmap t <Up>
vmap n <Down>
vmap s <Right>
vmap H <Home>
vmap T <PageUp>
vmap N <PageDown>
vmap S <End>

" Escape with Ctrl-C
nmap <c-c> <esc>
imap <c-c> <esc>
vmap <c-c> <esc>
omap <c-c> <esc>

" Go to Tab (Windows and Linux)
nnoremap <A-1> 1gt
nnoremap <A-2> 2gt
nnoremap <A-3> 3gt
nnoremap <A-4> 4gt
nnoremap <A-5> 5gt
nnoremap <A-6> 6gt
nnoremap <A-7> 7gt
nnoremap <A-8> 8gt
nnoremap <A-9> 9gt
nnoremap <A-0> 10gt

" Go to Tab (MacVim)
nnoremap <D-1> 1gt
nnoremap <D-2> 2gt
nnoremap <D-3> 3gt
nnoremap <D-4> 4gt
nnoremap <D-5> 5gt
nnoremap <D-6> 6gt
nnoremap <D-7> 7gt
nnoremap <D-8> 8gt
nnoremap <D-9> 9gt
nnoremap <D-0> 10gt

" Go to Tab (Mac CLI)
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt
nnoremap <leader>0 10gt

" Split Navigation
map <silent> <C-h> <C-w>h
map <silent> <C-j> <C-w>j
map <silent> <C-k> <C-w>k
map <silent> <C-l> <C-w>l

" Bubble single lines
nmap <silent> <C-Up>   [e
nmap <silent> <C-Down> ]e

" Bubble multiple lines
nmap <silent> <C-Up>   [egv
nmap <silent> <C-Down> ]egv

" Sort Functions to a key when press '\'s
vnoremap <Leader>s :sort<CR>

" Toggle invisible
noremap <Leader>i :set list!<CR>

" Toggle NERDTree
map <C-n> :NERDTreeToggle<CR>

" Easier moving of code blocks
vnoremap < <gv
vnoremap > >gv

" Invisible characters
set listchars=tab:>\ ,eol:¬,trail:.

" Show WhiteSpaces
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red

" Remove WhiteSpaces
autocmd BufWritePre * :%s/\s\+$//e

" Easier formatting paragraphs
vmap Q gq
nmap Q gqap

" Alert problems
hi Problem ctermbg=red guibg=red
match Problem /\s\+$/
match Problem /^\s\*\t\+\s\*/
nnoremap <silent> ,a :call Preserve("%s/\\s\\+$//e")<CR>
autocmd BufWritePre *.py, *.js, *.dtml :call Preserver("%s/\\s\\+$//e")

" Vim-template Config
let g:email = "emiliano.firmino@gmail.com"
let g:user  = "Emiliano Firmino"

" Colorscheme
colorscheme elise

let g:vimshell_prompt = "$"
let g:vimshell_secondary_prompt = ">"
let g:SuperTabDefaultCompletionType = "context"

" Enable rust autoformat
let g:rustfmt_autosave = 1
