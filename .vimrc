" NeoBundle 
set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" plugins
NeoBundle 'fatih/vim-go'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler'

" colorschema
NeoBundle 'tomasr/molokai'
NeoBundle 'nanotech/jellybeans.vim'

" visualize indent
NeoBundle 'Yggdroot/indentLine'

call neobundle#end()

filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck


" remap
vnoremap <C-j> <esc>
inoremap <C-j> <esc>


" clipboard
set clipboard=unnamedplus,autoselectplus

function! ToClipboard()
  call system("xsel -ib", getreg('+'))
endfunction
autocmd VimLeave * :call ToClipboard()
noremap <C-z> :call ToClipboard()<CR><C-z>


" completion
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>


" others
set number
set hlsearch
set noswapfile
syntax on
set shiftwidth=2
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,cp932,sjis,euc-jp

" colorschema
colorscheme jellybeans

" vimfiler
let g:vimfiler_as_default_explorer=1

autocmd BufRead,BufNewFile *.py setfiletype python
