"Affiche les lignes en relatif la ligne courante en absolu
:set number relativenumber

"Affiche les commandes tappées au clavier en mode normal.
set showcmd

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdcommenter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/nerdtree'
call plug#end()

" Vim-Airline Configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1 
let g:airline_theme='bubblegum'
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1 

" Key Mapping
map <C-n> :NERDTreeToggle<CR>
