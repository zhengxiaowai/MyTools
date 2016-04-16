set nu
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set nowrap
set expandtab

set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set backupcopy=yes

let g:jsx_ext_required = 0
"let mapleader="ctrl"

" bundle
"set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" plugin
Plugin 'VundleVim/Vundle.vim'

" vim-react-snippets:
Bundle "justinj/vim-react-snippets"

" SnipMate and its dependencies:
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"

" Other sets of snippets (optional):
Bundle "honza/vim-snippets"

" jsx
"Bundle 'mxw/vim-jsx'

"less
Bundle 'vim-less'

" ctrlp
Bundle 'ctrlpvim/ctrlp.vim'

" flake8
Bundle 'nvie/vim-flake8'

Bundle 'mattn/emmet-vim'

Plugin 'elzr/vim-json'
Plugin 'nginx.vim'

call vundle#end()
filetype plugin indent on
" end bundle

if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
       \| exe "normal g'\"" | endif
endif

syntax on
set t_Co=256
"set background=dark

" map
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>
nmap <F3> :w<CR>

" ctrlp
"let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlP'
map <leader>f :CtrlPMRU<CR>
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
    \ }
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1

" 模板信息
let g:snips_author='何翔宇'
let g:snips_email='hexiangyu@limijiaoyin.com'
let g:snips_git='https://git.limijiaoyin.com/limijiaoyin/limijiaoyin'

let g:vim_json_syntax_conceal = 0


noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
