filetype plugin on
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
" let g:python3_host_prog=expand('$LOCALAPPDATA\Programs\Python\Python310\python.exe') " Python 3
let g:python3_host_prog=expand('python') " Python 3
let g:SignatureMarkTextHLDynamic = 1
let g:SignatureMarkerTextHLDynamic = 1
call plug#begin('D:/AppD932/.vim/plugged')

function! Cond(cond, ...)
  let opts = get(a:000, 0, {})
  return a:cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction

""Make sure you use single quotes
" Plugin outside ~/.vim/plugged with post-update hook
" NVIM Enhance

" Plug 'junegunn/fzf' ", { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf' | Plug 'junegunn/fzf.vim'
" Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
" Plug 'preservim/tagbar' | Plug 'mkalinski/vim-lightline_tagbar'
Plug 'liuchengxu/vista.vim'
" Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
" Plug 'TaDaa/vimade'
Plug 'scrooloose/nerdtree', Cond(!exists('g:vscode'))
" Plug 'chazy/cscope_maps'
Plug 'Yggdroot/LeaderF' ", { 'do': './install.sh' }
Plug 'ukyouz/LeaderF-git'
Plug 'kshenoy/vim-signature', Cond(!exists('g:vscode'))
Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/vim-preview'
" Plug 'skywind3000/gutentags_plus'

" Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'Shougo/denite.nvim' | Plug 'ozelentok/denite-gtags', {'for': ['c', 'cpp', 'h']}
" Plug 'Shougo/denite.nvim' | Plug 'chemzqm/denite-git'

Plug 'equalsraf/neovim-gui-shim', Cond(!exists('g:vscode'))
Plug 'andymass/vim-matchup'
Plug 'michaeljsmith/vim-indent-object'
" Plug 'justinmk/vim-sneak'
Plug 'rlane/pounce.nvim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'wellle/targets.vim'
Plug 'tpope/vim-repeat'
Plug 'machakann/vim-highlightedyank'
Plug 'inside/vim-search-pulse'
Plug 'bkad/CamelCaseMotion'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'tpope/vim-unimpaired'
" Plug 'sillybun/vim-repl'

" Plug 'christoomey/vim-system-copy'
" Plug 'drewtempelmeyer/palenight.vim'
" Plug 'easymotion/vim-easymotion'
" Plug 'bling/vim-bufferline'
Plug 'mhinz/vim-startify', Cond(!exists('g:vscode'))
" Plug 'lambdalisue/session.vim'
Plug 'vim-scripts/restore_view.vim', Cond(!exists('g:vscode'))
Plug 'RRethy/vim-illuminate'
" Color Theme
Plug 'rakr/vim-one'
Plug 'ukyouz/onedark.vim'
" Plug 'navarasu/onedark.nvim'
" Plug 'ayu-theme/ayu-vim'
" Plug 'lifepillar/vim-solarized8'

""completion
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'Shougo/deoplete.nvim' | Plug 'Shougo/deoplete-clangx', {'for': ['c', 'cpp']}
" Plug 'Shougo/deoplete.nvim' | Plug 'deoplete-plugins/deoplete-jedi', {'for': ['py', 'pyw']}
" Plug 'Shougo/deoplete.nvim' | Plug 'deoplete-plugins/deoplete-clang', {'for': ['c']}
" Plug 'Shougo/deoplete.nvim' | Plug 'Shougo/neoinclude.vim', {'for': ['c', 'cpp', 'h']}
" Plug 'hari-rangarajan/CCTree', {'for': ['c', 'cpp']}
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'ray-x/lsp_signature.nvim'
" Plug 'nvim-lua/completion-nvim'

" Git Enhance
Plug 'airblade/vim-gitgutter', Cond(!exists('g:vscode'))
Plug 'tpope/vim-fugitive', Cond(!exists('g:vscode'))
Plug 'kdheepak/lazygit.nvim', Cond(!exists('g:vscode'))

" Syntax Enhance
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'nvim-treesitter/nvim-treesitter-refactor'
Plug 'lewis6991/spellsitter.nvim'
" Plug 'romgrk/nvim-treesitter-context'
" Plug 'folke/twilight.nvim'
" Plug 'nvim-treesitter/playground', Cond(!exists('g:vscode'))
" Plug 'lukas-reineke/indent-blankline.nvim'
" Plug 'vim-python/python-syntax', {'for': ['python', 'py', 'pyw']}
" Plug 'octol/vim-cpp-enhanced-highlight', {'for': ['c']}
" Plug 'jackguo380/vim-lsp-cxx-highlight', {'for': ['c', 'cpp', 'h']}
" Plug 'luochen1990/rainbow'
" Initialize plugin system
call plug#end()

let mapleader=" "
map ; :
" imap kj <Esc>
" imap jk <Esc>
" nnoremap <silent> <F5> :set ft=unix ff=unix<CR>:w<CR>:e!<CR>
nnoremap <silent> <F5> :e!<CR>
" lazy macro repeat
nnoremap <silent> <a-,> @@

""Keep cursor position for search and highlight
nnoremap * :keepjumps normal! *N<CR>
nnoremap # :keepjumps normal! #N<CR>
""Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
  \:normal N<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
  \:normal N<CR>

function! SaveJump(motion)
  if exists('#SaveJump#CursorMoved')
    autocmd! SaveJump
  else
    normal! m'
  endif
  let m = a:motion
  if v:count
    let m = v:count.m
  endif
  execute 'normal!' m
endfunction

function! SetJump()
  augroup SaveJump
    autocmd!
    autocmd CursorMoved * autocmd! SaveJump
  augroup END
endfunction
" Save the first <C-u>/<C-d> location to jumplist
nnoremap <silent> <C-u> :<C-u>call SaveJump("\<lt>C-u>")<CR>:call SetJump()<CR>
nnoremap <silent> <C-d> :<C-u>call SaveJump("\<lt>C-d>")<CR>:call SetJump()<CR>

" directly open grep/lgrep window without "Press Enter"
" https://stackoverflow.com/questions/61361423/grep-in-vim-opens-terminal-with-results-before-showing-them-in-vim
function! Grep(...)
    return system(join([&grepprg] + [a:1] + [expandcmd(join(a:000[1:-1], ' '))], ' '))
endfunction
command! -nargs=+ -complete=file_in_path -bar Grep  cgetexpr Grep(<f-args>)
command! -nargs=+ -complete=file_in_path -bar LGrep lgetexpr Grep(<f-args>)
cnoreabbrev <expr> grep  (getcmdtype() ==# ':' && getcmdline() ==# 'grep')  ? 'Grep'  : 'grep'
cnoreabbrev <expr> lgrep (getcmdtype() ==# ':' && getcmdline() ==# 'lgrep') ? 'LGrep' : 'lgrep'

augroup quickfix
    autocmd!
    autocmd QuickFixCmdPost cgetexpr cwindow
    autocmd QuickFixCmdPost lgetexpr lwindow
augroup END

" Reload vimr configuration file
nnoremap <Leader>vr :source $MYVIMRC<CR>

" Move Cursor between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Resize splits
nnoremap <silent> <C-=> :vertical resize +7<CR>
nnoremap <silent> <C--> :vertical resize -7<CR>
nnoremap <silent> <C-.> :resize +3<CR>
nnoremap <silent> <C-,> :resize -3<CR>
" nnoremap <silent> <C-0> <C-w>=
" Toggle serch highlight
nnoremap <silent> <C-;> :noh<CR>
" auto-jump if only one match or list all matched tags
" nnoremap <silent> <C-]> g<C-]>
nnoremap <silent> <F12> <C-]>zt

inoremap <C-s> <Esc>:w<CR>a
nnoremap <C-s> :w<CR>
" Copy to system clipboard
inoremap <silent> <C-v> <Esc>"*pa
vnoremap <silent> <C-c> "*y
" Quick Split
" nnoremap <silent> <C-\> :vsplit<CR>
" nnoremap <silent> <C-/> :split<CR>

" Triger `autoread` when files changes on disk
" https://unix.stackexchange.com/questions/149209/refresh-changed-content-of-file-opened-in-vim/383044#383044
" https://vi.stackexchange.com/questions/13692/prevent-focusgained-autocmd-running-in-command-line-editing-mode
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI *
  \ if mode() !~ '\v(c|r.?|!|t)' && getcmdwintype() == '' | checktime | endif

" Notification after file change
" https://vi.stackexchange.com/questions/13091/autocmd-event-for-autoread
autocmd FileChangedShellPost * silent
  \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

augroup correct_filetype
  au!
  autocmd BufNewFile,BufRead *.html   set syntax=html
  autocmd BufNewFile,BufRead *.md     set spell
augroup END

" show linenumber cursorline highlightsearch nowrap
set shortmess+=at
set number cursorline hlsearch incsearch nowrap
set linespace=1
set scrolloff=0
set autoread
set autoindent
set formatoptions-=tc
set splitright splitbelow
set tabstop=4 softtabstop=4 shiftwidth=4
set expandtab
set nowrapscan
set mouse=a
"set clipboard+=unnamedplus
set list listchars=tab:\┊\ ,trail:·,extends:?,precedes:?,nbsp:×
set title
set titlestring=%{getcwd()}\ \|\ %f\ %a%r%m
set lazyredraw
" set path+=**

" Turn backup off
set nobackup nowb noswapfile
set hidden

" toggle linenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" toggle cursorline
augroup cursorlinetoggle
  autocmd!
  autocmd BufEnter,FocusGained * set cursorline
  autocmd BufLeave,FocusLost   * set nocursorline
augroup END

" disable python style auto settings being overridden
" let g:python_recommended_style = 1

""restore_view
set viewoptions=cursor,folds,slash,unix

source $LOCALAPPDATA/nvim/config-plug/c-enhance.vim
" source $LOCALAPPDATA/nvim/config-plug/vim-sneak.vim
source $LOCALAPPDATA/nvim/config-plug/pounce.vim
source $LOCALAPPDATA/nvim/config-plug/vim-illuminate.vim
source $LOCALAPPDATA/nvim/config-plug/vim-commentary.vim
" source $LOCALAPPDATA/nvim/config-plug/vim-extended-surround-block-element.vim
source $LOCALAPPDATA/nvim/config-plug/vim-highlightedyank.vim
source $LOCALAPPDATA/nvim/config-plug/search-pulse.vim
" source $LOCALAPPDATA/nvim/config-plug/vimade.vim
" source $LOCALAPPDATA/nvim/config-plug/ctrlp.vim
" source $LOCALAPPDATA/nvim/config-plug/fzf.vim
" source $LOCALAPPDATA/nvim/config-plug/coc.vim
source $LOCALAPPDATA/nvim/config-plug/lspconfig.vim
" source $LOCALAPPDATA/nvim/config-plug/deoplete.vim
source $LOCALAPPDATA/nvim/config-plug/gtags.vim
" source $LOCALAPPDATA/nvim/cconfig-plug/denite.vim
source $LOCALAPPDATA/nvim/config-plug/vim-preview.vim
source $LOCALAPPDATA/nvim/config-plug/leaderf.vim
source $LOCALAPPDATA/nvim/config-plug/leaderf-git.vim
" source $LOCALAPPDATA/nvim/config-plug/cctree.vim
source $LOCALAPPDATA/nvim/config-plug/treesitter.vim
" source $LOCALAPPDATA/nvim/config-plug/tagbar.vim
source $LOCALAPPDATA/nvim/config-plug/vista.vim
" source $LOCALAPPDATA/nvim/config-plug/gen_tags.vim
" source $LOCALAPPDATA/nvim/config-plug/session.vim
source $LOCALAPPDATA/nvim/config-plug/vim-grep.vim
source $LOCALAPPDATA/nvim/config-plug/CamelCaseMotion.vim
source $LOCALAPPDATA/nvim/config-plug/terminal.vim

" source $LOCALAPPDATA/nvim/config-plug/python-syntax.vim
if exists('g:vscode')
set termguicolors
else
source $LOCALAPPDATA/nvim/config-plug/style-syntax.vim
source $LOCALAPPDATA/nvim/config-plug/nerdtree.vim
source $LOCALAPPDATA/nvim/config-plug/startify.vim
source $LOCALAPPDATA/nvim/config-plug/git-enhance.vim
endif

" load project-based vimrc
function! LoadProjectVimrc()
    let s:project_vimrc=findfile("vimrc", getcwd())
    if exists("s:project_vimrc") && filereadable(expand(s:project_vimrc))
        echom "source ".getcwd()."\\".s:project_vimrc
        execute "source ".s:project_vimrc
    endif
endfunction
execute LoadProjectVimrc()

