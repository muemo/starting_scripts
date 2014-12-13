set shiftwidth=4 softtabstop=4
set incsearch ignorecase hlsearch
syntax on
" Press space to clear search highlighting and any message already displayed.
nnoremap <silent> <Space> :silent noh<Bar>echo<CR>
set autoindent
set history=50
set ruler
set showcmd
set incsearch
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif
filetype plugin indent on
set number
set cmdheight=1 "The commandbar height

" Reopen mit sudo
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!
command Wq :execute ':W' | :q
command WQ :Wq

"Mit F5 Script starten
au BufEnter * 
	    \if match( getline(1) , '^\#!') == 0 | 
	    \ execute("let b:interpreter = getline(1)[2:]") | 
	    \endif 
fun! CallInterpreter() 
        if exists("b:interpreter") 
	             exec ("!".b:interpreter." %") 
		         endif 
		     endfun 
		     map <F5> :call CallInterpreter()<CR> 

" --- Statusline Options
set statusline= "clear it first
set statusline+=%n:        " - buffer number, followed by a colon
set statusline+=%<%f        " - relative filename, truncated from the left
set statusline+=\         " - a space
set statusline+=%h        " - [Help] if this is a help buffer
set statusline+=%m        " - [+] if modified, [-] if not modifiable
set statusline+=%r        " - [RO] if readonly
set statusline+=\         " - a space
set statusline+=\         " - a space
set statusline+=%=        " - right-align the rest
set statusline+=%-10.(%l,%c%V%) " - line,column[-virtual column]
set statusline+=\         " - a space
set statusline+=%4L        " - total number of lines in buffer
set statusline+=\         " - a space
set statusline+=%P        " - position in buffer as percentage
"
" Always display the status line, even if only one window is displayed
set laststatus=2
