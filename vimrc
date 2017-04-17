set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Plugin 'scrooloose/nerdtree.git'
" Plugin 'ctrlpvim/ctrlp.vim'
" Plugin 'vim-syntastic/syntastic'
" Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-fugitive.git'
Plugin 'tpope/vim-unimpaired'
" Plugin 'rhysd/vim-clang-format'
Plugin 'wikitopian/hardmode.git'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()            " required

filetype plugin indent on
syntax on
set number
set relativenumber
set incsearch
set nohlsearch
set wildmode=longest,list
set background=light

set expandtab
set smartindent
set shiftwidth=4
set cindent shiftwidth=4
" #set equalprg = clang - format
noremap = mi:% !clang-format<CR>'i
inoremap <c-i> <ESC>mi:% !clang-format<CR>'ii

if has("cscope")
    " set csprg=/usr/bin/cscope
    set csto=0
    set cst
    set nocsverb
    " add any database in current directory
    if filereadable("cscope.out")
    cs add cscope.out
    " else add database pointed to by environment
    elseif $CSCOPE_DB != ""
    cs add $CSCOPE_DB
    endif
    set csverb
    " set cscopetag
    map <C-_> :cstag <C-R>=expand("<cword>")<CR><CR>
    map g<C-]> :cs find c <C-R>=expand("<cword>")<CR><CR>
    map g<C-\> :cs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>
    " Using 'CTRL-spacebar' then a search type makes the vim window
    " split horizontally, with search result displayed in
    " the new window.
    nmap <C-x>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-x>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-x>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-x>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-x>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-x>f :vert scs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-x>i :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-x>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>
    " Hitting CTRL-space *twice* before the search type does a vertical
    " split instead of a horizontal one
    nmap <C-x><C-x>s :scs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-x><C-x>g :scs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-x><C-x>c :scs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-x><C-x>t :scs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-x><C-x>e :scs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-x><C-x>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-x><C-x>d :scs find d <C-R>=expand("<cword>")<CR><CR>
endif

	cnoremap <C-A> <Home>
	"cnoremap <C-F> <Right>
	cnoremap <C-B> <Left>
	cnoremap <Esc>b <S-Left>
	cnoremap <Esc>f <S-Right>
