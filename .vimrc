""" NOTE: I have begun removing the indent specifications from, for example: /usr/share/vim/vim74/indent/python.vim 
" so they stop screwing with my own settings
" durr, the problem was :set paste was cancelling indentation, removing that
" fixed it, but now above file is still deleted

" wishlist: 
    "add quotes around current word ( or more generally add matching braces/quotes/parens)
    "enter insert mode and hit enter
    " write notes about a file into a register, append that to the title bar?
    

    " IMPORTANT: remove that assinine bullshit of leaving buffers open when i close the tab.
    "       possibly solution http://joshldavis.com/2014/04/05/vim-tab-madness-buffers-vs-tabs/
    " how do i communicate across windows?
    "
    " empty a line without deleting the linebreak

    " camel case movement on :w
    " http://stackoverflow.com/questions/8949317/moving-through-camelcase-words-in-vim
" awesome command :verbose set tabstop? - displays where the last change came from
set nocompatible
set showmatch
execute pathogen#infect()
syntax enable
filetype plugin indent on
"filetype plugin on
colorscheme desert
set t_Co=256
:let g:html_indent_inctags = "html,body,head,tbody" 
" set indentxpr to increase indent on ':'

" ctrlp settings
:let g:ctrlp_max_files=0 " prevent ctrlp from having a max file limit
:let g:ctrlp_custom_ignore = '*.git$'

set grepprg=ack-grep
set shiftwidth=4
"set tabstop=4
set softtabstop=4
set backspace=indent,eol,start   " consume expanded tabs if possible
set expandtab
set autoindent
set shiftround
set relativenumber
set showmode
set showcmd
set hidden
set autoread
set ignorecase
set smartcase
set incsearch
"set shellcmdflag=-i   was breaking shell commands, but also allowed for case insensitive autocomplete from within vim shell....
"set clipboard=unnamedplus
set autochdir
set laststatus=2
set statusline=%<%F\ %h%m%r%=%-14.(%l,%c%V%)\ %13.L\ %P 
set titlestring=%F
set splitbelow
set splitright
set lbr " proper word wrap

" reload the last line in the file:
if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
        \| exe "normal! g'\"" | endif
endif

command! Q bd

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap Q <nop>
" need to remap the c key to use the right register
nnoremap k gk
vnoremap k gk
nnoremap j gj
vnoremap j gj
nnoremap J 20j
vnoremap J 20j
nnoremap K 20k
vnoremap K 20k
map H ^
map L $
map G G$
imap jj <esc>
imap kkk <esc>
inoremap <F1> <esc>
nnoremap <F1> <esc>
vnoremap <F1> <esc>
nnoremap / /\v
vnoremap / /\v
nnoremap ; :
nnoremap <C-l> L
nnoremap <C-h> H
map w <Plug>CamelCaseMotion_w
map W <Plug>CamelCaseMotion_b
map e <Plug>CamelCaseMotion_e
" not working =[
"map E <Plug>CamelCaseMotion_b | <Plug>CamelCaseMotion_b 
"nmap W b
"vmap W b
"nnoremap F J
nnoremap , <C-e>
nnoremap . <C-y>
vnoremap , <C-e>
vnoremap . <C-y>
nnoremap <C-d> w
nnoremap <C-a> b
"nnoremap R r
"nnoremap r R
nnoremap S ^v$
nnoremap <C-c> "+y
vnoremap <C-c> "+y
nnoremap <C-p> "+p
nnoremap <C-P> "+P
nnoremap <C-d> 0D
nnoremap B J
nnoremap ` .

nnoremap <leader>i <C-w>v<C-w>l
nnoremap <leader>h <C-w>s<C-w>j
nnoremap <leader>d <C-w>l
nnoremap <leader>a <C-w>h
nnoremap <leader>w <C-w>k
nnoremap <leader>s <C-w>j
" for some reason TMux puts a bunch of crap in the command line
" this addition fixes that
nnoremap <leader>q :tabp<cr> " :i<del><del><cr>
nnoremap <leader>e :tabn<cr> " :i<del><del><cr>
nnoremap <leader>E :tabm +1<cr>
nnoremap <leader>Q :tabm -1<cr>
nnoremap <leader>n :NERDTree<cr>
nnoremap <leader>N :NERDTree /home/trevor<cr>
nnoremap <leader>c :call NERDComment(0, "toggle")<cr>
nnoremap <leader>t :tabedit 
nnoremap <leader>T :tabedit <cword><cr> " doesn't work
nnoremap <leader><right> :10winc <<cr>
nnoremap <leader><left> :10winc ><cr>
nnoremap <leader><up> :res -5<cr>
nnoremap <leader><down> :res +5<cr>
" how can these search backwards? apply %?
nnoremap <leader>[ /\v\{<cr> 
nnoremap <leader>] /\v\}<cr> 
nnoremap <leader>P :CtrlP 
nnoremap <leader>p :CtrlP ~/storage/PaperG/placelocal/<cr>
"nnoremap <leader>p :CtrlP  <cr>
nnoremap <leader>b :bufdo tab split<cr> :q<cr>
nnoremap <leader>B :BufOnly!<cr>
nnoremap <leader>` :tabedit $MYVIMRC<cr>
nnoremap <leader>~ :so $MYVIMRC<cr>
"nnoremap <leader>1 :tabonly<cr>
nnoremap <leader>z :pwd<cr>
nnoremap <leader>D :DiffSaved<cr>
nnoremap <leader>l :LsTab<cr> 
nnoremap <leader>o :let @o = expand("<cword>")<cr>
nnoremap <leader>z :let @z = expand("%:p")<cr>:pwd<cr>
nnoremap <leader>~ :so $MYVIMRC<cr>
"nnoremap <leader>1 :tabonly<cr>
nnoremap <leader>f :GrepTab 
nnoremap <leader>F :NewTabFromReg<cr>
nnoremap <leader>z :pwd<cr>
nnoremap <leader>l :LsTab<cr> 
nnoremap <leader>o :let @o = expand("<cword>")<cr>
nnoremap <leader>z :let @z = expand("%:p")<cr>:pwd<cr>
"nnoremap <leader>v :echom expand("<cword>")<cr>
nnoremap <leader>. :vertical resize +10<cr>
nnoremap <leader>, :vertical resize -10<cr>
nnoremap <leader>g :%s/pick/squash/gc<cr>
nnoremap <leader>v :vsplit 

" tab stuff
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt

if exists("+showtabline")
     function! MyTabLine()
         let s = ''
         let t = tabpagenr()
         let i = 1
         while i <= tabpagenr('$')
             let buflist = tabpagebuflist(i)
             let winnr = tabpagewinnr(i)
             let s .= '%' . i . 'T'
             let s .= (i == t ? '%1*' : '%2*')
             let s .= ' '
             let s .= i . ')'
             let s .= ' %*'
             let s .= (i == t ? '%#TabLineSel#' : '%#TabLine#')
             let file = bufname(buflist[winnr - 1])
             let file = fnamemodify(file, ':p:t')
             if file == ''
                 let file = '[No Name]'
             endif
             let s .= file
             let i = i + 1
         endwhile
         let s .= '%T%#TabLineFill#%='
         let s .= (tabpagenr('$') > 1 ? '%999XX' : 'X')
         return s
     endfunction
     set stal=2
     set tabline=%!MyTabLine()
endif

"""""""""""""""""""""""""""""""""
"                               "
"           FUNCTIONS           "
"                               "
"""""""""""""""""""""""""""""""""

function! s:JsLint()
    let f=expand("%") | vnew | execute '.! jshint "' . f . '"'
endfunction
com! -nargs=0 JSLINT call s:JsLint()

function! s:NewSplitLs()
   new | r ! ls
endfunction

com! -nargs=0 LsTab call s:NewSplitLs()

function! s:NewTabGrep(...)
    let args=split(a:1)    
    let searchStr = args[0]
    if len(args) >= 2        
        let dir=args[1]
        if len(args) > 2
            let searchStr = join(args[0:len(args)-2])
            let dir=args[len(args) - 1]
        endif
    else
        let dir='.'
    endif
    if dir == "##"
        let dir = "/home/trevor/storage/PaperG/placelocal"
    else
        let dir = expand("%:p:h") . "/" . dir
    endif
    echom "searching for: " . shellescape(searchStr) . " in: " . shellescape(dir)
    let @d = dir "expand("%:p:h") . "/"
    tabnew | execute "r ! ack-grep --ignore-directory=logs ". shellescape(searchStr) ." ". shellescape(dir)
    "how can we name this tab something useful?
endfunction
com! -nargs=? GrepTab call s:NewTabGrep('<args>')

function! s:DoHighlightMany(...)
    let num=a:1
    normal 0v 
    let c = 1
    " there must be a better way to do this
    while c < num
        normal gj
        let c += 1
    endwhile
    normal L
    "normal! "*y
endfunction
com! -nargs=1 HighlightMany call s:DoHighlightMany('<args>')

function! s:NewTabFromRegister()
    let filename = @f
    let directory = @d
    execute "tabedit" . directory . filename
endfunction
com! NewTabFromReg call s:NewTabFromRegister()

" should make this thing split left
function! s:DiffWithSaved()
    let filetype=&ft
    diffthis
    vnew | r # | normal! 1Gdd
    diffthis
    exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()

function! s:DiffWithGITCheckedOut()
    let filetype=&ft
    diffthis
    vnew | exe "%!git diff " . expand("#:p:h") . "| patch -p 1 -Rs -o /dev/stdout"
    exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
    diffthis
endfunction
com! DiffGIT call s:DiffWithGITCheckedOut()

