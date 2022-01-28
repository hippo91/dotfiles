" VIMRC d'après G.PEILLEX ::
"       Mix from Amir Salihefendic and Doug Black
"       http://amix.dk - amix@amix.dk
"       http://dougblack.io/words/a-good-vimrc.html#colors
"       thanks!
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" COLORS
call pathogen#infect() "An easy to use plugin manager 
call pathogen#helptags() "An easy to use plugin manager 

"colorscheme solarized " Sweet colors
colorscheme pyte " Sweet colors
"colorscheme badwolf " Sweet colors

if has("gui_running")
    set background=light
else
    set background=dark
endif

syntax enable " Enable syntax highlighting

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" LEADER SHORTCUTS
"Save session
nnoremap <leader>s :mksession<CR>

"Open ag.vim
nnoremap <leader>a :Ag

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" SPACE & TABS
set tabstop=2 "Number of viusal spaces per tab
"When opening a file vim converts a tab to four spaces

set softtabstop=2 "Number of spaces in tab when editing
"When inserting a tab vim converts it to four spaces

set expandtab "Use spaces instead of tabs

set shiftwidth=2
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" USER INTERFACE 
set history=700 "Sets how many lines of history VIM has to remember

set cmdheight=2 "Height of the command bar

set number "Print line numbers 

set showcmd "Print the last command in bottom bar

set cursorline "Draw an horizontal highlight on tne line the cursor is currently on

filetype indent on "Load filetype-specific indent files

set autoindent "Automatic indentation

"set smartindent "Smart indent
set cindent

set wildmenu "Visual autocomplete for command menu

set wildignore=*.o,*~,*.pyc "Ignore compiled files

set showmatch "Show matching brackets when text indicator is over them

set mat=2 "How many tenths of a second to blink when matching brackets

" Largeur minimale de la marge des numeros de ligne (augmente
" automatiquement)
set numberwidth=1
" Linebreak on 97 characters
set wrap "Wrap lines
set linebreak
set tw=80
" Prefixe les lignes issues d un retour de ligne
set showbreak="|_>"

"No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

set backspace=indent,eol,start "Retours arrières intelligents 

set mouse=a "Support de la souris

set magic "For regular expressions turn magic on

set showtabline=1 "Print tab line only if at least two tabs are opened

set tabline=%n\ %f\ %l\ %T  "Print tab number and relative path to the edited file

"Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set t_Co=256
    "set guitablabel=%N\ %t "Print tab number and name of the edited file
    set guitablabel=%n\ %f\ %l\ %m"Print tab number and relative path to the edited file
endif

set encoding=utf8 "Set utf8 as standard encoding and en_US as the standard language

set ffs=unix,dos,mac "Use Unix as the standard file type

set autoread "Automatic reload of a modified file
au CursorHold * checktime
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" SEARCHING
set incsearch           "Search as characters are entered

set hlsearch            "Highlight matches

"Turn off search highlight
nnoremap <leader><space> :nohlsearch<CR> 

set ignorecase "Ignore case when searching

set smartcase "When searching try to be smart about cases 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" FOLDING
set foldenable "Enable folding

set foldlevelstart=10 "Open most folds by default (0 for none - 99 for all)

set foldnestmax=10 "10 nested fold max

"Space open/closes folds
nnoremap <space> za 

set foldmethod=syntax "Fold based on syntax

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" COMPLETION
filetype plugin on
set omnifunc=syntaxcomplete#Complete

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" SPECIAL OPS
"An easy to use undo graph explorer"
nnoremap <F4> :GundoToggle<CR> 

"An easy to use file explorer
nnoremap <F5> :NERDTreeToggle<CR> 

"To search specfic files
nnoremap <F3> :CtrlP<CR> 

"To use Taglist
nnoremap <F2> :TlistToggle<CR>
""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2
set statusline=Path:\ %F\ \|\ Ligne:\ %l\ \|\ Colonne:\ %c\ \|\ Byte:\ %b-->0x%B
" Dedicated airline add on
" let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'badwolf'
""""""""""""""""""""""""""""""
" => Printer
""""""""""""""""""""""""""""""
set pdev=cp

""""""""""""""""""""""""""""""
" => Read pdf
""""""""""""""""""""""""""""""
:command! -complete=file -nargs=1 Rpdf :r !pdftotext -nopgbrk <q-args> - |fmt -csw78


""""""""""""""""""""""""""""""
" => vim-jedi config
""""""""""""""""""""""""""""""
let g:jedi#use_tabs_not_buffers = 1

