" NeoBundle 
set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" plugins
NeoBundle 'fatih/vim-go'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }
NeoBundle 'plasticboy/vim-markdown'

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


" colorschema
colorscheme jellybeans

" vimfiler
let g:vimfiler_as_default_explorer=1
cnoremap vf :<C-u>VimFilerBufferDir -split -simple -winwidth=35 -no-quit

" unite
nnoremap <silent> ,g  :<C-u>Unite grep:<CR>
nnoremap <silent> ,cg :<C-u>Unite grep:. -buffer-name=search-buffer<CR><C-R><C-W>

" ctags
nnoremap <C-]> g<C-]>
set tags=.ctags

" vim-markdown
let g:vim_markdown_folding_disabled = 1
"let g:vim_markdown_folding_level = 4
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_conceal = 0
let g:vim_markdown_emphasis_multiline = 0
let g:vim_markdown_autowrite = 1
let g:vim_markdown_edit_url_in = 'tab'


" others
set number
set hlsearch
set noswapfile
syntax on
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,cp932,sjis,euc-jp
set autoindent
set expandtab
set shiftwidth=2
set tabstop=2
