" NeoBundle 
set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" plugins
NeoBundle 'fatih/vim-go'

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
