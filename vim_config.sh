#!/bin/bash
echo "downloading plugin manager..."
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo "modifying .vimrc file..."
{
echo "set colorcolumn=80"
echo "highlight ColorColumn ctermbg=black guibg=black"
echo "set number"
echo "\" Enable 256 color mode"
echo "set t_Co=256"
echo ""
echo "\" Set dark gray background color"
echo "highlight Normal ctermbg=235"
echo ""
echo "set nocompatible              \" Required for Vundle"
echo "filetype off                  \" Required for Vundle"
echo ""
echo "\" Set up Vundle"
echo "set rtp+=~/.vim/bundle/Vundle.vim"
echo "call vundle#begin()"
echo ""
echo "\" Let Vundle manage itself"
echo "Plugin 'VundleVim/Vundle.vim'"
echo "Plugin 'christoomey/vim-system-copy'"
echo "Plugin 'Preservim/nerdtree'"
echo "\" .."
echo "call vundle#end()"
echo ""
echo "\" Optional: map Ctrl+n to toggle NERDTree"
echo "map <C-n> :NERDTreeToggle<CR>"
echo "\" Enables file type detection and indentation"
echo "filetype plugin indent on"
echo "syntax on"
echo ""
echo "\" Resize window height with Ctrl+W + Up arrow"
echo "nnoremap <C-W><C-Up> :resize +7<CR>"
echo ""
echo "\" Resize window height with Ctrl+W + Down arrow"
echo "nnoremap <C-W><C-Down> :resize -7<CR>"
echo ""
echo "\" Resize window width with Ctrl+W + Right arrow"
echo "nnoremap <C-W><C-Right> :vertical resize -7<CR>"
echo ""
echo "\" Resize window width with Ctrl+W + Left arrow"
echo "nnoremap <C-W><C-Left> :vertical resize +7<CR>"
echo "nnoremap <C-w>x :q!<CR>"
echo "nnoremap <C-w>t :enew<CR>:term<CR>"
echo "autocmd DirChanged * NERDTree | NERDTreeFind"
echo "\" Define the Grep command for case-insensitive recursive grep in the current directory"
echo "command! -nargs=1 GREP execute 'cexpr system(\"grep --color=auto -RIi \" . shellescape(<q-args>) . \" .\")' | copen"
echo ""
echo ""
echo "\" Show hidden files in NERDTree"
echo "let g:NERDTreeShowHidden=1"
} > ~/.vimrc
echo "installing plugins..."
vim +PluginInstall +qall
