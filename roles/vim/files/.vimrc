" Do not modify this file
set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')

for f in split(glob('~/.short-stack/vimrc.d/*.bundle'), '\n')
  exe 'source' f
endfor

call plug#end()

for f in split(glob('~/.short-stack/vimrc.d/*.vimrc'), '\n')
  exe 'source' f
endfor
