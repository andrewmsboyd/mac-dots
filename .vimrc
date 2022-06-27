""""""""" General Settings

" Set encoding
"set encoding=UTF-8

" enable syntax highlighting
syntax on

" disable double mode notifications (due to lightline plugin)
set noshowmode

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif


""""""""" Line Number Setting

" Use relative line numbering
set number relativenumber

" turn hybrid line numbers on
":set number relativenumber
":set nu rnu

" turn hybrid line numbers off
":set nonumber norelativenumber
":set nonu nornu

" toggle hybrid line numbers
":set number! relativenumber!
":set nu! rnu!


""""""""" vim-plug stuff

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes



" list your plugins here
"
" lightline status bar
Plug 'itchyny/lightline.vim'

" NERDTree and its plugins
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'

" vim-fugitive for git integration
Plug 'tpope/vim-fugitive'

" File icons
Plug 'ryanoasis/vim-devicons'


" Initialize plugin system
call plug#end()


NeoBundle 'tiagofumo/vim-nerdtree-syntax-highlight'
