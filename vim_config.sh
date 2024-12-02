#!/bin/bash
echo "downloading plugin manager..."
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo "modifying .vimrc file..."
{
echo "set colorcolumn=74"
echo "highlight ColorColumn ctermbg=240 guibg=#4e5f5f"
echo "set number"
echo "\" Enable 256 color mode"
echo "set t_Co=256"

echo "\" Set dark gray background color"
echo "highlight Normal ctermbg=235"

echo "set laststatus=2"

echo "set nocompatible              \" Required for Vundle"
echo "filetype off                  \" Required for Vundle"

echo "\" Set up Vundle"
echo "set rtp+=~/.vim/bundle/Vundle.vim"
echo "call vundle#begin()"

echo "\" Let Vundle manage itself"
echo "Plugin 'VundleVim/Vundle.vim'"
echo "Plugin 'christoomey/vim-system-copy'"
echo "Plugin 'Preservim/nerdtree'"
echo "Plugin 'preservim/tagbar'"
echo "Plugin 'tc50cal/vim-terminal'"
echo "Plugin 'jiangmiao/auto-pairs'"
echo "Plugin 'tpope/vim-surround'"

echo "\" .."
echo "call vundle#end()"
echo "nmap <F8> :TagbarToggle<CR>"

echo "\" Optional: map Ctrl+n to toggle NERDTree"
echo "map <C-n> :NERDTreeToggle<CR>"
echo "\" Enables file type detection and indentation"
echo "filetype plugin indent on"
echo "\" Resize window height with Ctrl+W + Down arrow"
echo "nnoremap <C-W><C-Down> :resize -7<CR>"

echo "\" Resize window width with Ctrl+W + Right arrow"
echo "nnoremap <C-W><C-Right> :vertical resize -7<CR>"

echo "\" Resize window width with Ctrl+W + Left arrow"
echo "nnoremap <C-W><C-Left> :vertical resize +7<CR>"
echo "nnoremap <C-s> :w<CR>"
echo "inoremap <C-s> <Esc>:w<CR>a"
echo "vnoremap <C-s> <Esc>:w<CR>gv"
echo "nnoremap <C-w>x :q!<CR>"
echo "nnoremap <C-w>t :TerminalSplit bash<CR>"

echo "autocmd DirChanged * NERDTree | NERDTreeFind"

echo "\" Define the Grep command for case-insensitive recursive grep in the current directory"
echo "command! -nargs=1 GREP execute 'cexpr system(\"grep -A 1 -B 1 --color=auto -RIin \" . shellescape(<q-args>) . \" .\")' | copen"

echo "\" Show hidden files in NERDTree"
echo "let g:NERDTreeShowHidden=1"

echo "\" Highlight trailing spaces"
echo "highlight TrailingSpaces ctermbg=blue guibg=blue"
echo "match TrailingSpaces /\\s\\+$/"

} > ~/.vimrc
echo "installing plugins..."
vim +PluginInstall +qall
